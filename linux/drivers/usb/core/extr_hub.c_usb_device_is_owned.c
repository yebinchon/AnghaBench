
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__** ports; } ;
struct usb_device {scalar_t__ state; int portnum; int parent; } ;
struct TYPE_2__ {int port_owner; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 struct usb_hub* usb_hub_to_struct_hub (int ) ;

bool usb_device_is_owned(struct usb_device *udev)
{
 struct usb_hub *hub;

 if (udev->state == USB_STATE_NOTATTACHED || !udev->parent)
  return 0;
 hub = usb_hub_to_struct_hub(udev->parent);
 return !!hub->ports[udev->portnum - 1]->port_owner;
}
