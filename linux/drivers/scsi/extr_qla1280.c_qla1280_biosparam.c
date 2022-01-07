
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static int
qla1280_biosparam(struct scsi_device *sdev, struct block_device *bdev,
    sector_t capacity, int geom[])
{
 int heads, sectors, cylinders;

 heads = 64;
 sectors = 32;
 cylinders = (unsigned long)capacity / (heads * sectors);
 if (cylinders > 1024) {
  heads = 255;
  sectors = 63;
  cylinders = (unsigned long)capacity / (heads * sectors);


 }

 geom[0] = heads;
 geom[1] = sectors;
 geom[2] = cylinders;

 return 0;
}
