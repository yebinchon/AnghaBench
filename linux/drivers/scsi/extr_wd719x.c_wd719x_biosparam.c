
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int,int) ;

__attribute__((used)) static int wd719x_biosparam(struct scsi_device *sdev, struct block_device *bdev,
       sector_t capacity, int geom[])
{
 if (capacity >= 0x200000) {
  geom[0] = 255;
  geom[1] = 63;
 } else {
  geom[0] = 64;
  geom[1] = 32;
 }
 geom[2] = sector_div(capacity, geom[0] * geom[1]);

 return 0;
}
