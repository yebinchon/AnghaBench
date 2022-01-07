
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int driver; } ;
struct ccwgroup_device {int dummy; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int ccwgroup_set_offline (struct ccwgroup_device*) ;
 int ccwgroup_set_online (struct ccwgroup_device*) ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

__attribute__((used)) static ssize_t ccwgroup_online_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ccwgroup_device *gdev = to_ccwgroupdev(dev);
 unsigned long value;
 int ret;

 device_lock(dev);
 if (!dev->driver) {
  ret = -EINVAL;
  goto out;
 }

 ret = kstrtoul(buf, 0, &value);
 if (ret)
  goto out;

 if (value == 1)
  ret = ccwgroup_set_online(gdev);
 else if (value == 0)
  ret = ccwgroup_set_offline(gdev);
 else
  ret = -EINVAL;
out:
 device_unlock(dev);
 return (ret == 0) ? count : ret;
}
