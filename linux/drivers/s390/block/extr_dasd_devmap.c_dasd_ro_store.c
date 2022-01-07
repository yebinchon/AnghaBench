
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {TYPE_1__* block; int flags; } ;
struct ccw_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int open_count; int gdp; } ;


 int DASD_FEATURE_READONLY ;
 int DASD_FLAG_DEVICE_RO ;
 int DASD_FLAG_OFFLINE ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct dasd_device* dasd_device_from_cdev (struct ccw_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_set_feature (struct ccw_device*,int ,unsigned int) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 int set_disk_ro (int ,unsigned int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_ro_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct dasd_device *device;
 unsigned long flags;
 unsigned int val;
 int rc;

 if (kstrtouint(buf, 0, &val) || val > 1)
  return -EINVAL;

 rc = dasd_set_feature(cdev, DASD_FEATURE_READONLY, val);
 if (rc)
  return rc;

 device = dasd_device_from_cdev(cdev);
 if (IS_ERR(device))
  return count;

 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 val = val || test_bit(DASD_FLAG_DEVICE_RO, &device->flags);

 if (!device->block || !device->block->gdp ||
     test_bit(DASD_FLAG_OFFLINE, &device->flags)) {
  spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);
  goto out;
 }

 atomic_inc(&device->block->open_count);
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);

 set_disk_ro(device->block->gdp, val);
 atomic_dec(&device->block->open_count);

out:
 dasd_put_device(device);

 return count;
}
