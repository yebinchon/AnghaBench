
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENODATA ;
 int ENOMEDIUM ;
 int diag14 (int,int,int) ;

__attribute__((used)) static int diag_position_to_record(int devno, int record)
{
 int cc;

 cc = diag14(record, devno, 0x28);
 switch (cc) {
 case 0:
  return 0;
 case 2:
  return -ENOMEDIUM;
 case 3:
  return -ENODATA;
 default:
  return -EIO;
 }
}
