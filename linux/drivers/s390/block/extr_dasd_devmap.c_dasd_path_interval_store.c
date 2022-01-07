
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_device {unsigned long path_interval; } ;
typedef size_t ssize_t ;


 unsigned long DASD_INTERVAL_MAX ;
 size_t EINVAL ;
 size_t ENODEV ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int get_ccwdev_lock (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t
dasd_path_interval_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct dasd_device *device;
 unsigned long flags;
 unsigned long val;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return -ENODEV;

 if ((kstrtoul(buf, 10, &val) != 0) ||
     (val > DASD_INTERVAL_MAX) || val == 0) {
  dasd_put_device(device);
  return -EINVAL;
 }
 spin_lock_irqsave(get_ccwdev_lock(to_ccwdev(dev)), flags);
 if (val)
  device->path_interval = val;
 spin_unlock_irqrestore(get_ccwdev_lock(to_ccwdev(dev)), flags);
 dasd_put_device(device);
 return count;
}
