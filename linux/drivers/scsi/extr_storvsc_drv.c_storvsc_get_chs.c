
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int,int) ;

__attribute__((used)) static int storvsc_get_chs(struct scsi_device *sdev, struct block_device * bdev,
      sector_t capacity, int *info)
{
 sector_t nsect = capacity;
 sector_t cylinders = nsect;
 int heads, sectors_pt;




 heads = 0xff;
 sectors_pt = 0x3f;
 sector_div(cylinders, heads * sectors_pt);
 if ((sector_t)(cylinders + 1) * heads * sectors_pt < nsect)
  cylinders = 0xffff;

 info[0] = heads;
 info[1] = sectors_pt;
 info[2] = (int)cylinders;

 return 0;
}
