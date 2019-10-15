-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2019 lúc 01:20 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlisach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `idsach` int(11) NOT NULL,
  `tensach` varchar(50) NOT NULL,
  `theloai` varchar(40) NOT NULL,
  `nhaxuatban` varchar(50) NOT NULL,
  `gia` int(11) NOT NULL,
  `linkanh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`idsach`, `tensach`, `theloai`, `nhaxuatban`, `gia`, `linkanh`) VALUES
(1, 'Tư tưởng Hồ Chí Minh', 'Chính trị', 'NXB Chính trị Hà Nội', 26000, 'http://thuvienlequan.hvcsnd.edu.vn/Uploads/2017/9/6/Sach-HCM.jpg'),
(4, 'Xây Dựng Để Trường Tồn', 'Kinh tế', 'NXB Trẻ', 112000, 'https://tintuc.viettelstore.vn/wp-content/uploads/2018/10/icon-facebook-1.png'),
(5, 'Bệnh Loãng Xương Và Cách Điều Trị', 'Y học- Sức khỏe', 'NXB Thời đại', 50000, 'https://img.icons8.com/ios-filled/2x/hummerstein.png'),
(8, 'địa lý 10', 'sách giáo khoa', 'nxb giáo dục vn', 12000, 'https://img.icons8.com/carbon-copy/2x/cherry.png'),
(13, 'sach 1', 'the loai 1', 'nha xuat ban 1', 50000, 'https://img.icons8.com/officel/2x/book.png'),
(14, 'sach 2', 'the loai 2', 'nha xuat ban 2', 123456, 'https://img.icons8.com/officel/2x/book.png'),
(41, 'sach 5', '5', '5', 5, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456'),
(2, 'tai', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`idsach`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `idsach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
