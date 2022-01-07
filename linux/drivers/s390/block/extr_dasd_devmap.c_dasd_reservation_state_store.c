
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {int flags; } ;
typedef int ssize_t ;


 int DASD_FLAG_LOCK_STOLEN ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int clear_bit (int ,int *) ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 scalar_t__ sysfs_streq (char*,char const*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t dasd_reservation_state_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct dasd_device *device;
 int rc = 0;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return -ENODEV;
 if (sysfs_streq("reset", buf))
  clear_bit(DASD_FLAG_LOCK_STOLEN, &device->flags);
 else
  rc = -EINVAL;
 dasd_put_device(device);

 if (rc)
  return rc;
 else
  return count;
}
