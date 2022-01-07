
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct usb_device {int devnum; scalar_t__ devaddr; int wusb; } ;



__attribute__((used)) static void update_devnum(struct usb_device *udev, int devnum)
{

 if (!udev->wusb)
  udev->devnum = devnum;
 if (!udev->devaddr)
  udev->devaddr = (u8)devnum;
}
