
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; scalar_t__ bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; } ;
struct usb_device_id {int match_flags; scalar_t__ bInterfaceClass; scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; scalar_t__ bInterfaceNumber; } ;
struct TYPE_3__ {scalar_t__ bDeviceClass; } ;
struct usb_device {TYPE_1__ descriptor; } ;


 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int USB_DEVICE_ID_MATCH_INT_CLASS ;
 int USB_DEVICE_ID_MATCH_INT_NUMBER ;
 int USB_DEVICE_ID_MATCH_INT_PROTOCOL ;
 int USB_DEVICE_ID_MATCH_INT_SUBCLASS ;
 int USB_DEVICE_ID_MATCH_VENDOR ;

int usb_match_one_id_intf(struct usb_device *dev,
     struct usb_host_interface *intf,
     const struct usb_device_id *id)
{



 if (dev->descriptor.bDeviceClass == USB_CLASS_VENDOR_SPEC &&
   !(id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
   (id->match_flags & (USB_DEVICE_ID_MATCH_INT_CLASS |
    USB_DEVICE_ID_MATCH_INT_SUBCLASS |
    USB_DEVICE_ID_MATCH_INT_PROTOCOL |
    USB_DEVICE_ID_MATCH_INT_NUMBER)))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_CLASS) &&
     (id->bInterfaceClass != intf->desc.bInterfaceClass))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_SUBCLASS) &&
     (id->bInterfaceSubClass != intf->desc.bInterfaceSubClass))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_PROTOCOL) &&
     (id->bInterfaceProtocol != intf->desc.bInterfaceProtocol))
  return 0;

 if ((id->match_flags & USB_DEVICE_ID_MATCH_INT_NUMBER) &&
     (id->bInterfaceNumber != intf->desc.bInterfaceNumber))
  return 0;

 return 1;
}
