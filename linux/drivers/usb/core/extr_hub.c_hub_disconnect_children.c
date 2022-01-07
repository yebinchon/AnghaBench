
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__** ports; } ;
struct usb_device {int maxchild; } ;
struct TYPE_2__ {scalar_t__ child; } ;


 int usb_disconnect (scalar_t__*) ;
 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

__attribute__((used)) static void hub_disconnect_children(struct usb_device *udev)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(udev);
 int i;


 for (i = 0; i < udev->maxchild; i++) {
  if (hub->ports[i]->child)
   usb_disconnect(&hub->ports[i]->child);
 }
}
