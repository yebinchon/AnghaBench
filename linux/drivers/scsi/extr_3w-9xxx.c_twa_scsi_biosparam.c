
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {scalar_t__ hostdata; } ;
typedef int TW_Device_Extension ;


 int sector_div (int,int) ;

__attribute__((used)) static int twa_scsi_biosparam(struct scsi_device *sdev, struct block_device *bdev, sector_t capacity, int geom[])
{
 int heads, sectors, cylinders;
 TW_Device_Extension *tw_dev;

 tw_dev = (TW_Device_Extension *)sdev->host->hostdata;

 if (capacity >= 0x200000) {
  heads = 255;
  sectors = 63;
  cylinders = sector_div(capacity, heads * sectors);
 } else {
  heads = 64;
  sectors = 32;
  cylinders = sector_div(capacity, heads * sectors);
 }

 geom[0] = heads;
 geom[1] = sectors;
 geom[2] = cylinders;

 return 0;
}
