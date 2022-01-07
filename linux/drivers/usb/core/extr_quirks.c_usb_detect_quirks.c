
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bDeviceClass; } ;
struct usb_device {int quirks; int persist_enabled; TYPE_1__ descriptor; int dev; } ;


 scalar_t__ USB_CLASS_HUB ;
 int USB_QUIRK_RESET ;
 int dev_dbg (int *,char*,int) ;
 scalar_t__ usb_amd_resume_quirk (struct usb_device*) ;
 int usb_amd_resume_quirk_list ;
 int usb_detect_dynamic_quirks (struct usb_device*) ;
 int usb_detect_static_quirks (struct usb_device*,int ) ;
 int usb_quirk_list ;

void usb_detect_quirks(struct usb_device *udev)
{
 udev->quirks = usb_detect_static_quirks(udev, usb_quirk_list);





 if (usb_amd_resume_quirk(udev))
  udev->quirks |= usb_detect_static_quirks(udev,
    usb_amd_resume_quirk_list);

 udev->quirks ^= usb_detect_dynamic_quirks(udev);

 if (udev->quirks)
  dev_dbg(&udev->dev, "USB quirks for this device: %x\n",
   udev->quirks);






 if (udev->descriptor.bDeviceClass == USB_CLASS_HUB)
  udev->persist_enabled = 1;

}
