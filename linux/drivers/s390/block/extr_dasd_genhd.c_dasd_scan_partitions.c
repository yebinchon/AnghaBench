
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_block {struct block_device* bdev; int base; int gdp; } ;
struct block_device {int dummy; } ;


 int DBF_DEV_EVENT (int ,int ,char*,...) ;
 int DBF_ERR ;
 int ENODEV ;
 int FMODE_READ ;
 struct block_device* bdget_disk (int ,int ) ;
 int blkdev_get (struct block_device*,int ,int *) ;
 int blkdev_reread_part (struct block_device*) ;

int dasd_scan_partitions(struct dasd_block *block)
{
 struct block_device *bdev;
 int rc;

 bdev = bdget_disk(block->gdp, 0);
 if (!bdev) {
  DBF_DEV_EVENT(DBF_ERR, block->base, "%s",
         "scan partitions error, bdget returned NULL");
  return -ENODEV;
 }

 rc = blkdev_get(bdev, FMODE_READ, ((void*)0));
 if (rc < 0) {
  DBF_DEV_EVENT(DBF_ERR, block->base,
         "scan partitions error, blkdev_get returned %d",
         rc);
  return -ENODEV;
 }

 rc = blkdev_reread_part(bdev);
 if (rc)
  DBF_DEV_EVENT(DBF_ERR, block->base,
    "scan partitions error, rc %d", rc);
 block->bdev = bdev;
 return 0;
}
