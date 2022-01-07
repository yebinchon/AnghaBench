
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_type {int * devices_kobj; int kobj; } ;
struct device {int kobj; } ;


 char* dev_name (struct device*) ;
 int mdev_device_attrs ;
 int sysfs_create_files (int *,int ) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

int mdev_create_sysfs_files(struct device *dev, struct mdev_type *type)
{
 int ret;

 ret = sysfs_create_link(type->devices_kobj, &dev->kobj, dev_name(dev));
 if (ret)
  return ret;

 ret = sysfs_create_link(&dev->kobj, &type->kobj, "mdev_type");
 if (ret)
  goto type_link_failed;

 ret = sysfs_create_files(&dev->kobj, mdev_device_attrs);
 if (ret)
  goto create_files_failed;

 return ret;

create_files_failed:
 sysfs_remove_link(&dev->kobj, "mdev_type");
type_link_failed:
 sysfs_remove_link(type->devices_kobj, dev_name(dev));
 return ret;
}
