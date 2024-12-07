use app_food

CREATE TABLE `user`(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	full_name VARCHAR(255),
	email VARCHAR(255),
	password VARCHAR(255)
)
-- DROP TABLE `user`

CREATE TABLE restaurant(
	res_id INT PRIMARY KEY AUTO_INCREMENT,
	res_name VARCHAR(255),
	image VARCHAR(255),
	`desc` VARCHAR(255)
)

CREATE TABLE rate_res (
	rate_res_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT ,
	res_id INT ,
	amount INT,
	date_rate DATETIME,
	FOREIGN KEY (user_id) REFERENCES `user`(user_id),
	FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
)

CREATE TABLE `order` (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	food_id INT,
	amount INT,
	code varchar(255),
	arr_sub_id varchar(255),
	FOREIGN KEY (user_id) REFERENCES `user`(user_id),
	FOREIGN KEY (food_id) REFERENCES food(food_id)
)

CREATE TABLE food (
	food_id INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(255),
	image VARCHAR(255),
	price FLOAT,
	`desc` VARCHAR(255),
	type_id INT,
	FOREIGN KEY (type_id) REFERENCES food_type(type_id)
)

CREATE TABLE food_type(
	type_id INT PRIMARY KEY AUTO_INCREMENT,
	type_name varchar(255)
)

CREATE TABLE like_res (
	like_res_id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	res_id INT,
	data_like DATETIME,
	FOREIGN KEY (user_id) REFERENCES `user`(user_id)

)

CREATE TABLE sub_food (
	sub_id INT PRIMARY KEY AUTO_INCREMENT,
	sub_name varchar(255),
	sub_price float,
	food_id INT,
	FOREIGN KEY (food_id) REFERENCES food(food_id)
	
)

INSERT INTO `user`(full_name,email,`password` ) VALUE 
				("Trịnh Vĩ Thành", "trinhvidanhthanh1@gmail.com", "1234"),
    			("Trinh Vĩ Danh", "trinhvidanh1@gmail.com", "1234"),
    			("Hoàng Thành Phúc", "hoangthanhphuc1@gmail.com", "1234"),
    			("Hoàng Thành Hiếu", "hoangthanhhieu1@gmail.com", "1234"),
    			("Phạm Hoàng Hoài Vũ", "phamhoanghoaivu1@gmail.com", "1234"),
    			("Nguyễn Thành Công", "nguyenthanhcong1@gmail.com", "1234"),
    			("Lê Văn Bình", "levanbinh1@gmail.com", "1234"),
    			("Trần Quang Vinh", "tranquangvinh1@gmail.com", "1234"),
    			("Phan Minh Tuấn", "phanminhtuan1@gmail.com", "1234"),
    			("Đoàn Thanh Sơn", "doanthanhson1@gmail.com", "1234")

INSERT INTO restaurant (res_name,image,`desc`) VALUE
						("Nhà Hàng Pizza Ngon", "pizza_ngon.jpg", "Nơi dành cho những người yêu thích pizza."),
    					("Thiên Đường Sushi", "thien_duong_sushi.jpg", "Sushi ngon nhất trong thành phố."),
    					("Bánh Mì Kẹp Thịt", "banh_mi_kep_thit.jpg", "Bánh mì kẹp thịt tươi ngon."),
    					("Quán Tacos Mêxico", "quan_tacos_mexico.jpg", "Tacos chính hiệu hương vị Mêxico."),
    					("Thiên Đường Mì Ý", "thien_duong_mi_y.jpg", "Hương vị nước Ý truyền thống."),
    					("Quán Cà Phê Sáng", "ca_phe_sang.jpg", "Quán cà phê với không gian yên tĩnh."),
    					("Nhà Hàng Hải Sản Tươi", "hai_san_tuoi.jpg", "Hải sản tươi sống với nhiều món ngon."),
    					("Quán Lẩu Nấm", "lau_nam.jpg", "Lẩu nấm nóng hổi cho những ngày lạnh."),
    					("Cơm Tấm Ba Búa", "com_tam_ba_bua.jpg", "Cơm tấm với đồ ăn kèm đầy đủ."),
    					("Quán Mì Xào Bắc Kinh", "mi_xao_bac_kinh.jpg", "Mì xào Bắc Kinh hương vị tuyệt vời.")


INSERT INTO food (food_name, image, price, `desc`,type_id) VALUE
						("Pizza Hải Sản", "pizza_hai_san.jpg", 150.00, "Pizza hải sản tươi ngon, hấp dẫn.",1),
    					("Sushi Cá Hồi", "sushi_ca_hoi.jpg", 200.00, "Sushi cá hồi thơm ngon, chuẩn vị Nhật.",2),
    					("Burger Bò Phô Mai", "burger_bo_pho_mai.jpg", 120.00, "Burger bò với phô mai béo ngậy.",3),
    					("Tacos Gà", "tacos_ga.jpg", 80.00, "Tacos gà cay nồng, hấp dẫn.",4),
    					("Mì Ý Sốt Bò", "mi_y_sot_bo.jpg", 100.00, "Mì Ý với sốt bò truyền thống.",5),
    					("Mì Xào Hải Sản", "mi_xao_hai_san.jpg", 130.00, "Mì xào với hải sản tươi ngon.",6),
    					("Gà Rán Giòn", "ga_ran_gion.jpg", 90.00, "Gà rán giòn với gia vị đặc biệt.",7),
    					("Hủ Tiếu Nam Vang", "hu_tieu_nam_vang.jpg", 70.00, "Hủ tiếu Nam Vang đậm đà hương vị.",8),
    					("Bánh Mì Kẹp Xíu Mại", "banh_mi_xiu_mai.jpg", 50.00, "Bánh mì kẹp xíu mại ngon miệng.",9),
    					("Phở Bò Hà Nội", "pho_bo_ha_noi.jpg", 85.00, "Phở bò hương vị Hà Nội chuẩn xác.",10)

INSERT INTO sub_food (sub_name, sub_price,food_id) VALUE
						("Phô Mai Thêm", 20.00, 1),
    					("Trứng Cá Hồi", 50.00, 2),
   					 	("Thịt Xông Khói", 30.00, 3),
   					 	("Xốt Salsa", 15.00, 4),
    					("Phô Mai Bào", 25.00, 5),
   					 	("Dưa Leo", 10.00, 6),
    					("Hành Tây", 5.00, 7),
    					("Nấm Hương", 18.00, 8),
    					("Tôm Tươi", 40.00, 9),
    					("Cà Chua", 8.00, 10)

INSERT INTO `order` (user_id, food_id,amount, code, arr_sub_id) VALUE
					(1, 1, 200000, "ORD001", NULL),
    				(2, 2, 100000, "ORD002", NULL),
    				(3, 3, 300000, "ORD003", NULL),
    				(4, 4, 100000, "ORD004", NULL),
    				(5, 5, 200000, "ORD005", NULL),
    				(6, 6, 150000, "ORD006", NULL),
    				(7, 7, 170000, "ORD007", NULL),
    				(8, 8, 250000, "ORD008", NULL),
    				(9, 9, 100000, "ORD009", NULL),
    				(10, 10, 220000, "ORD010", NULL)


INSERT INTO like_res (user_id, res_id, data_like) VALUE
    					(1, 1, NOW()),
    					(2, 2, NOW()),
    					(3, 3, NOW()),
    					(4, 4, NOW()),
    					(5, 5, NOW()),
    					(6, 6, NOW()),
    					(7, 7, NOW()),
    					(8, 8, NOW()),
    					(9, 9, NOW()),
    					(10, 10, NOW());
	

INSERT INTO food_type (type_name) VALUE
    ("Pizza"),
    ("Sushi"),
    ("Burger"),
    ("Tacos"),
    ("Pasta"),
    ("Salad"),
    ("Soup"),
    ("Dessert"),
    ("Steak"),
    ("Noodles")
    
 INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUE
 (1, 1, 50000, NOW()),  
 (2, 2, 40000, NOW()),   
 (3, 3, 30000, NOW()),   
 (4, 4, 40000, NOW()),
 (5, 5, 50000, NOW()),  
 (6, 1, 40000, NOW()), 
 (7, 2, 30000, NOW()),  
 (8, 3, 50000, NOW()),  
 (9, 4, 40000, NOW()),  
 (10, 5, 50000, NOW()); 
 
-- Tìm 5 người đã like nhà hàng nhiều nhất.
SELECT `user`.user_id,full_name,email,COUNT(like_res.user_id) AS "5 người like nhà hàng nhiều nhất "
FROM like_res
INNER JOIN `user` on `user`.user_id = like_res.user_id
GROUP BY like_res.user_id
ORDER BY COUNT(like_res.user_id) DESC
LIMIT 5

-- Tìm 2 nhà hàng có lượt like nhiều nhất.

SELECT restaurant.res_id,restaurant.res_name AS "NHÀ HÀNG",COUNT(like_res.res_id) AS "2 nhà hàng có lượt like nhiều nhất "
FROM like_res
INNER JOIN restaurant on restaurant.res_id = like_res.res_id
GROUP BY restaurant.res_id
ORDER BY COUNT(like_res.res_id) DESC
LIMIT 2


-- Tìm người đã đặt hàng nhiều nhất.

SELECT `user`.user_id, full_name, email, COUNT(`order`.order_id) AS "Người đã đặt hàng nhiều nhất"
FROM `order`
INNER JOIN `user` ON `user`.user_id = `order`.user_id
GROUP BY `user`.user_id
ORDER BY COUNT(`order`.order_id) DESC
LIMIT 1;

-- Tìm người dùng không hoạt động trong hệ thống(không đặt hàng, không like, không đánh giá nhà hàng).

SELECT `user`.user_id, full_name, email,`order`.order_id AS "Không đặt hàng",like_res.user_id AS "Không like",
rate_res.user_id AS "Không đánh giá nhà hàng"
FROM `user`
LEFT JOIN `order` ON `user`.user_id = `order`.user_id 
LEFT JOIN like_res ON like_res.user_id = `user`.user_id
LEFT JOIN rate_res ON rate_res.user_id = `user`.user_id
WHERE `order`.user_id IS NULL AND like_res.user_id IS NULL AND rate_res.user_id IS NULL


















