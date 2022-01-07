
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int * usb_dev; } ;
struct usb_device {scalar_t__ wusb; int devnum; struct wusb_dev* wusb_dev; } ;


 int usb_put_dev (struct usb_device*) ;
 int wusb_dev_bos_rm (struct wusb_dev*) ;
 int wusb_dev_put (struct wusb_dev*) ;
 int wusb_dev_sec_rm (struct wusb_dev*) ;
 int wusb_dev_sysfs_rm (struct wusb_dev*) ;

__attribute__((used)) static void wusb_dev_rm_ncb(struct usb_device *usb_dev)
{
 struct wusb_dev *wusb_dev = usb_dev->wusb_dev;

 if (usb_dev->wusb == 0 || usb_dev->devnum == 1)
  return;

 wusb_dev_sysfs_rm(wusb_dev);
 wusb_dev_bos_rm(wusb_dev);
 wusb_dev_sec_rm(wusb_dev);
 wusb_dev->usb_dev = ((void*)0);
 usb_dev->wusb_dev = ((void*)0);
 wusb_dev_put(wusb_dev);
 usb_put_dev(usb_dev);
}
