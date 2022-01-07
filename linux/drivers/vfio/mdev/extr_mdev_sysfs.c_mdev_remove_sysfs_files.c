
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_type {int * devices_kobj; } ;
struct device {int kobj; } ;


 char* dev_name (struct device*) ;
 int mdev_device_attrs ;
 int sysfs_remove_files (int *,int ) ;
 int sysfs_remove_link (int *,char*) ;

void mdev_remove_sysfs_files(struct device *dev, struct mdev_type *type)
{
 sysfs_remove_files(&dev->kobj, mdev_device_attrs);
 sysfs_remove_link(&dev->kobj, "mdev_type");
 sysfs_remove_link(type->devices_kobj, dev_name(dev));
}
