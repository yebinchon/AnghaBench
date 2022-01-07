
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int sector_div (int,int) ;

__attribute__((used)) static int ipr_biosparam(struct scsi_device *sdev,
    struct block_device *block_device,
    sector_t capacity, int *parm)
{
 int heads, sectors;
 sector_t cylinders;

 heads = 128;
 sectors = 32;

 cylinders = capacity;
 sector_div(cylinders, (128 * 32));


 parm[0] = heads;
 parm[1] = sectors;
 parm[2] = cylinders;

 return 0;
}
