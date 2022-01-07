
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 scalar_t__ is_usb_device (struct device*) ;
 int sysfs_remove_group (int *,int *) ;
 int usb_bus_attr_group ;

__attribute__((used)) static void remove_default_authorized_attributes(struct device *dev)
{
 if (is_usb_device(dev)) {
  sysfs_remove_group(&dev->kobj, &usb_bus_attr_group);
 }
}
