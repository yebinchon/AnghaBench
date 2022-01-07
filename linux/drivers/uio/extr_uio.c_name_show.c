
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_device {int info_lock; TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 struct uio_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct uio_device *idev = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&idev->info_lock);
 if (!idev->info) {
  ret = -EINVAL;
  dev_err(dev, "the device has been unregistered\n");
  goto out;
 }

 ret = sprintf(buf, "%s\n", idev->info->name);

out:
 mutex_unlock(&idev->info_lock);
 return ret;
}
