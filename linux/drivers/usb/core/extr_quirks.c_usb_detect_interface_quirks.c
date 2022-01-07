
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_device {int quirks; int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int usb_detect_static_quirks (struct usb_device*,int ) ;
 int usb_interface_quirk_list ;

void usb_detect_interface_quirks(struct usb_device *udev)
{
 u32 quirks;

 quirks = usb_detect_static_quirks(udev, usb_interface_quirk_list);
 if (quirks == 0)
  return;

 dev_dbg(&udev->dev, "USB interface quirks for this device: %x\n",
  quirks);
 udev->quirks |= quirks;
}
