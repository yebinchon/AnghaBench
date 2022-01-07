
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int,unsigned long) ;

__attribute__((used)) static int
mvumi_bios_param(struct scsi_device *sdev, struct block_device *bdev,
   sector_t capacity, int geom[])
{
 int heads, sectors;
 sector_t cylinders;
 unsigned long tmp;

 heads = 64;
 sectors = 32;
 tmp = heads * sectors;
 cylinders = capacity;
 sector_div(cylinders, tmp);

 if (capacity >= 0x200000) {
  heads = 255;
  sectors = 63;
  tmp = heads * sectors;
  cylinders = capacity;
  sector_div(cylinders, tmp);
 }
 geom[0] = heads;
 geom[1] = sectors;
 geom[2] = cylinders;

 return 0;
}
