
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__** ports; } ;
struct usb_device {int maxchild; scalar_t__ state; int active_duration; } ;
struct TYPE_2__ {struct usb_device* child; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 scalar_t__ USB_STATE_SUSPENDED ;
 scalar_t__ jiffies ;
 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

__attribute__((used)) static void recursively_mark_NOTATTACHED(struct usb_device *udev)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(udev);
 int i;

 for (i = 0; i < udev->maxchild; ++i) {
  if (hub->ports[i]->child)
   recursively_mark_NOTATTACHED(hub->ports[i]->child);
 }
 if (udev->state == USB_STATE_SUSPENDED)
  udev->active_duration -= jiffies;
 udev->state = USB_STATE_NOTATTACHED;
}
