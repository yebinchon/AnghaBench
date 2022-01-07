
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_device_id {int match_flags; scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;


 int USB_DEVICE_ID_MATCH_INT_INFO ;
 int usb_match_any_interface (struct usb_device*,struct usb_device_id const*) ;
 int usb_match_device (struct usb_device*,struct usb_device_id const*) ;

__attribute__((used)) static u32 usb_detect_static_quirks(struct usb_device *udev,
        const struct usb_device_id *id)
{
 u32 quirks = 0;

 for (; id->match_flags; id++) {
  if (!usb_match_device(udev, id))
   continue;

  if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_INFO) &&
      !usb_match_any_interface(udev, id))
   continue;

  quirks |= (u32)(id->driver_info);
 }

 return quirks;
}
