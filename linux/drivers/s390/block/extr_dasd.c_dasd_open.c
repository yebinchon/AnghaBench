
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dasd_device {scalar_t__ state; int features; TYPE_3__* block; TYPE_2__* discipline; int flags; TYPE_1__* cdev; } ;
struct block_device {int bd_disk; } ;
typedef int fmode_t ;
struct TYPE_6__ {int open_count; } ;
struct TYPE_5__ {int owner; } ;
struct TYPE_4__ {int dev; } ;


 int DASD_FEATURE_READONLY ;
 int DASD_FLAG_DEVICE_RO ;
 int DASD_FLAG_OFFLINE ;
 scalar_t__ DASD_STATE_BASIC ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_ERR ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int EROFS ;
 int FMODE_WRITE ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct dasd_device* dasd_device_from_gendisk (int ) ;
 scalar_t__ dasd_probeonly ;
 int dasd_put_device (struct dasd_device*) ;
 int dev_info (int *,char*) ;
 int module_put (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static int dasd_open(struct block_device *bdev, fmode_t mode)
{
 struct dasd_device *base;
 int rc;

 base = dasd_device_from_gendisk(bdev->bd_disk);
 if (!base)
  return -ENODEV;

 atomic_inc(&base->block->open_count);
 if (test_bit(DASD_FLAG_OFFLINE, &base->flags)) {
  rc = -ENODEV;
  goto unlock;
 }

 if (!try_module_get(base->discipline->owner)) {
  rc = -EINVAL;
  goto unlock;
 }

 if (dasd_probeonly) {
  dev_info(&base->cdev->dev,
    "Accessing the DASD failed because it is in "
    "probeonly mode\n");
  rc = -EPERM;
  goto out;
 }

 if (base->state <= DASD_STATE_BASIC) {
  DBF_DEV_EVENT(DBF_ERR, base, " %s",
         " Cannot open unrecognized device");
  rc = -ENODEV;
  goto out;
 }

 if ((mode & FMODE_WRITE) &&
     (test_bit(DASD_FLAG_DEVICE_RO, &base->flags) ||
      (base->features & DASD_FEATURE_READONLY))) {
  rc = -EROFS;
  goto out;
 }

 dasd_put_device(base);
 return 0;

out:
 module_put(base->discipline->owner);
unlock:
 atomic_dec(&base->block->open_count);
 dasd_put_device(base);
 return rc;
}
