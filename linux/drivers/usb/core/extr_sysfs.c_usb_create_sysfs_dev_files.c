
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct usb_device {struct device dev; } ;


 int add_default_authorized_attributes (struct device*) ;
 int add_persist_attributes (struct device*) ;
 int add_power_attributes (struct device*) ;
 int dev_bin_attr_descriptors ;
 int device_create_bin_file (struct device*,int *) ;
 scalar_t__ is_root_hub (struct usb_device*) ;
 int usb_remove_sysfs_dev_files (struct usb_device*) ;

int usb_create_sysfs_dev_files(struct usb_device *udev)
{
 struct device *dev = &udev->dev;
 int retval;

 retval = device_create_bin_file(dev, &dev_bin_attr_descriptors);
 if (retval)
  goto error;

 retval = add_persist_attributes(dev);
 if (retval)
  goto error;

 retval = add_power_attributes(dev);
 if (retval)
  goto error;

 if (is_root_hub(udev)) {
  retval = add_default_authorized_attributes(dev);
  if (retval)
   goto error;
 }
 return retval;

error:
 usb_remove_sysfs_dev_files(udev);
 return retval;
}
