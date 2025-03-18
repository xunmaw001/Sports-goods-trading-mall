-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm6940b
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2020-11-13 06:48:58',1,'地址1','收货人1','电话1','是否默认地址[是/否]1'),(2,'2020-11-13 06:48:58',2,'地址2','收货人2','电话2','是否默认地址[是/否]2'),(3,'2020-11-13 06:48:58',3,'地址3','收货人3','电话3','是否默认地址[是/否]3');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'mingxingtongkuan' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2020-11-13 06:48:58','商品表名1',1,1,'商品名称1','http://localhost:8080/ssm6940b/upload/cart_picture1.jpg',1,1,1),(2,'2020-11-13 06:48:58','商品表名2',2,2,'商品名称2','http://localhost:8080/ssm6940b/upload/cart_picture2.jpg',2,2,2),(3,'2020-11-13 06:48:58','商品表名3',3,3,'商品名称3','http://localhost:8080/ssm6940b/upload/cart_picture3.jpg',3,3,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'2020-11-13 06:48:58',1,1,'提问1','回复1',1),(2,'2020-11-13 06:48:58',2,2,'提问2','回复2',2),(3,'2020-11-13 06:48:58',3,3,'提问3','回复3',3);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chukuxinxi`
--

DROP TABLE IF EXISTS `chukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251752385 DEFAULT CHARSET=utf8 COMMENT='出库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukuxinxi`
--

LOCK TABLES `chukuxinxi` WRITE;
/*!40000 ALTER TABLE `chukuxinxi` DISABLE KEYS */;
INSERT INTO `chukuxinxi` VALUES (1605251752384,'2020-11-13 07:15:51','商品编号2','商品名称2',20,'2020-11-13','http://localhost:8080/ssm6940b/upload/1605251595008.jpg');
/*!40000 ALTER TABLE `chukuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(200) NOT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'2020-11-13 06:48:58','picture1','http://localhost:8080/ssm6940b/upload/picture1.jpg'),(2,'2020-11-13 06:48:58','picture2','http://localhost:8080/ssm6940b/upload/picture2.jpg'),(3,'2020-11-13 06:48:58','picture3','http://localhost:8080/ssm6940b/upload/picture3.jpg'),(4,'2020-11-13 06:48:58','picture4','http://localhost:8080/ssm6940b/upload/picture4.jpg'),(5,'2020-11-13 06:48:58','picture5','http://localhost:8080/ssm6940b/upload/picture5.jpg'),(6,'2020-11-13 06:48:58','homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmingxingtongkuan`
--

DROP TABLE IF EXISTS `discussmingxingtongkuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmingxingtongkuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='明星同款评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmingxingtongkuan`
--

LOCK TABLES `discussmingxingtongkuan` WRITE;
/*!40000 ALTER TABLE `discussmingxingtongkuan` DISABLE KEYS */;
INSERT INTO `discussmingxingtongkuan` VALUES (1,'2020-11-13 06:48:58',1,'评论内容1',1),(2,'2020-11-13 06:48:58',2,'评论内容2',2),(3,'2020-11-13 06:48:58',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussmingxingtongkuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (1,'2020-11-13 06:48:58',1,'评论内容1',1),(2,'2020-11-13 06:48:58',2,'评论内容2',2),(3,'2020-11-13 06:48:58',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,'2020-11-13 06:48:58','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(2,'2020-11-13 06:48:58','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(3,'2020-11-13 06:48:58','帖子标题3','帖子内容3',3,3,'用户名3','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2020-11-13 06:48:58',1,'用户名1','留言内容1','回复内容1'),(2,'2020-11-13 06:48:58',2,'用户名2','留言内容2','回复内容2'),(3,'2020-11-13 06:48:58',3,'用户名3','留言内容3','回复内容3');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mingxingtongkuan`
--

DROP TABLE IF EXISTS `mingxingtongkuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mingxingtongkuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `jianjie` longtext COMMENT '简介',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='明星同款';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mingxingtongkuan`
--

LOCK TABLES `mingxingtongkuan` WRITE;
/*!40000 ALTER TABLE `mingxingtongkuan` DISABLE KEYS */;
INSERT INTO `mingxingtongkuan` VALUES (1,'2020-11-13 06:48:57','商品编号1','商品名称1','商品类别1','http://localhost:8080/ssm6940b/upload/1605251559669.jpg','品牌1','数量1','2020-11-13','<p>简介1</p>',1),(2,'2020-11-13 06:48:57','商品编号2','商品名称2','商品类别2','http://localhost:8080/ssm6940b/upload/1605251595008.jpg','品牌2','数量2','2020-11-13','<p>简介2</p>',2),(3,'2020-11-13 06:48:57','商品编号3','商品名称3','商品类别3','http://localhost:8080/ssm6940b/upload/1605251610318.jpg','品牌3','数量3','2020-11-13','<p>简介3<img src=\"http://localhost:8080/ssm6940b/upload/1605251617179.jpg\"></p>',3);
/*!40000 ALTER TABLE `mingxingtongkuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-11-13 06:48:58','标题1','http://localhost:8080/ssm6940b/upload/1605252230166.jpg','<p>内容1fdsgdfgdfg<img src=\"http://localhost:8080/ssm6940b/upload/1605252235605.jpg\"></p>'),(2,'2020-11-13 06:48:58','标题2','http://localhost:8080/ssm6940b/upload/1605252244274.jpg','<p>内容2</p>'),(3,'2020-11-13 06:48:58','标题3','http://localhost:8080/ssm6940b/upload/1605252258446.jpg','<p>内容3jhgkjhsdgfjkdskjfdskjlf dsk jfdsjk f<img src=\"http://localhost:8080/ssm6940b/upload/1605252267092.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'mingxingtongkuan' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2020-11-13 06:48:58','订单id1','商品表名1',1,1,'商品名称1','http://localhost:8080/ssm6940b/upload/orders_picture1.jpg',1,1,1,1,1,1,'状态1','地址1'),(2,'2020-11-13 06:48:58','订单id2','商品表名2',2,2,'商品名称2','http://localhost:8080/ssm6940b/upload/orders_picture2.jpg',2,2,2,2,2,2,'状态2','地址2'),(3,'2020-11-13 06:48:58','订单id3','商品表名3',3,3,'商品名称3','http://localhost:8080/ssm6940b/upload/orders_picture3.jpg',3,3,3,3,3,3,'状态3','地址3');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongxinxi`
--

DROP TABLE IF EXISTS `peisongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kuaidimingcheng` varchar(200) DEFAULT NULL COMMENT '快递名称',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `fuzerenlianxidianhua` varchar(200) DEFAULT NULL COMMENT '负责人联系电话',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配送信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongxinxi`
--

LOCK TABLES `peisongxinxi` WRITE;
/*!40000 ALTER TABLE `peisongxinxi` DISABLE KEYS */;
INSERT INTO `peisongxinxi` VALUES (1,'2020-11-13 06:48:57','快递名称1','负责人姓名1','020-89819991','男','773890001@qq.com'),(2,'2020-11-13 06:48:57','快递名称2','负责人姓名2','020-89819992','男','773890002@qq.com'),(3,'2020-11-13 06:48:57','快递名称3','负责人姓名3','020-89819993','男','773890003@qq.com');
/*!40000 ALTER TABLE `peisongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rizhixinxi`
--

DROP TABLE IF EXISTS `rizhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rizhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='日志信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rizhixinxi`
--

LOCK TABLES `rizhixinxi` WRITE;
/*!40000 ALTER TABLE `rizhixinxi` DISABLE KEYS */;
INSERT INTO `rizhixinxi` VALUES (1,'2020-11-13 06:48:57','标题1','内容1','2020-11-13'),(2,'2020-11-13 06:48:57','标题2','内容2','2020-11-13'),(3,'2020-11-13 06:48:57','标题3','内容3','2020-11-13');
/*!40000 ALTER TABLE `rizhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rukuxinxi`
--

DROP TABLE IF EXISTS `rukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605251743980 DEFAULT CHARSET=utf8 COMMENT='入库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rukuxinxi`
--

LOCK TABLES `rukuxinxi` WRITE;
/*!40000 ALTER TABLE `rukuxinxi` DISABLE KEYS */;
INSERT INTO `rukuxinxi` VALUES (1605251724681,'2020-11-13 07:15:24','商品编号2','商品名称2','http://localhost:8080/ssm6940b/upload/shangpinxinxi_tupian2.jpg',15,'2020-11-13'),(1605251743979,'2020-11-13 07:15:43','商品编号3','商品名称3','http://localhost:8080/ssm6940b/upload/1605251610318.jpg',100,'2020-11-13');
/*!40000 ALTER TABLE `rukuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleibie`
--

DROP TABLE IF EXISTS `shangpinleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1605250325136 DEFAULT CHARSET=utf8 COMMENT='商品类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleibie`
--

LOCK TABLES `shangpinleibie` WRITE;
/*!40000 ALTER TABLE `shangpinleibie` DISABLE KEYS */;
INSERT INTO `shangpinleibie` VALUES (1605250292743,'2020-11-13 06:51:31','机械'),(1605250325135,'2020-11-13 06:52:04','衣服');
/*!40000 ALTER TABLE `shangpinleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `xiangqing` longtext COMMENT '详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (1,'2020-11-13 06:48:57','商品编号1','商品名称1','商品类别1','http://localhost:8080/ssm6940b/upload/shangpinxinxi_tupian1.jpg',100,'<p>详情1</p>',422),(2,'2020-11-13 06:48:57','商品编号2','商品名称2','商品类别2','http://localhost:8080/ssm6940b/upload/shangpinxinxi_tupian2.jpg',20,'<p>详情2</p>',2000),(3,'2020-11-13 06:48:57','商品编号3','商品名称3','商品类别3','http://localhost:8080/ssm6940b/upload/1605251633466.jpg',100,'<p><img src=\"http://localhost:8080/ssm6940b/upload/1605251647041.jpg\">详情3</p>',10);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2020-11-13 06:48:58',1,1,'表名1','收藏名称1','http://localhost:8080/ssm6940b/upload/storeup_picture1.jpg'),(2,'2020-11-13 06:48:58',2,2,'表名2','收藏名称2','http://localhost:8080/ssm6940b/upload/storeup_picture2.jpg'),(3,'2020-11-13 06:48:58',3,3,'表名3','收藏名称3','http://localhost:8080/ssm6940b/upload/storeup_picture3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','k3kxma5puo8hchlf6p2uk5vzd3mhothg','2020-11-13 06:51:08','2020-11-13 08:23:06');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-13 06:48:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (1,'2020-11-13 06:48:57','用户1','用户姓名1','123456','男','020-89819991',1),(2,'2020-11-13 06:48:57','用户2','用户姓名2','123456','男','020-89819992',2),(3,'2020-11-13 06:48:57','用户3','用户姓名3','123456','男','020-89819993',3);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 15:25:48
