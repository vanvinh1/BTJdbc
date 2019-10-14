create database JDBC
use JDBC
go

create table Student(
	id int IDENTITY(1,1) primary key NOT NULL,
	name nvarchar(50) ,
	age int 
)
go
insert into Student values(1,'A',18)
insert into Student values(2,'B',18)
insert into Student values(3,'C',18)

create table Class(
	id int IDENTITY(1,1) primary key NOT NULL,
	class_name nvarchar(50),
	amount int,
)
go
insert into Class values(1,'Toán',3)
insert into Class values(2,'Mác',2)
insert into Class values(3,'Java',1)

create table DayOff(
	id int IDENTITY(1,1) primary key NOT NULL,
	Studen_id int references Student(id),
	Dayoff int
)
go
insert into DayOff values(1,3,2)
insert into DayOff values(1,2,2)
insert into DayOff values(1,1,2)

create table Class_Student(
	Class_id int references Class(id),
	Class_name nvarchar(50),
	Student_id int references Student(id),
	Student_name nvarchar(50),
	Student_age int,
)
create table Student_DayOff(
	Student_id int references Student(id),
	DayOff_id int references DayOff(id),
	name nvarchar(50) ,
	Dayoff int 
)