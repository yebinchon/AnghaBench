
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__** ports; } ;
struct usb_device {int maxchild; } ;
struct TYPE_2__ {struct usb_device* child; } ;


 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

struct usb_device *usb_hub_find_child(struct usb_device *hdev,
  int port1)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(hdev);

 if (port1 < 1 || port1 > hdev->maxchild)
  return ((void*)0);
 return hub->ports[port1 - 1]->child;
}
