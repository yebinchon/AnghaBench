
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusb_dev {struct usb_device* usb_dev; } ;
struct TYPE_2__ {int kobj; } ;
struct usb_device {TYPE_1__ dev; } ;


 int sysfs_remove_group (int *,int *) ;
 int wusb_dev_attr_group ;

void wusb_dev_sysfs_rm(struct wusb_dev *wusb_dev)
{
 struct usb_device *usb_dev = wusb_dev->usb_dev;
 if (usb_dev)
  sysfs_remove_group(&usb_dev->dev.kobj, &wusb_dev_attr_group);
}
