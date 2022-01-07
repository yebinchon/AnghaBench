
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__** ports; } ;
struct usb_device {int maxchild; } ;
struct usb_dev_state {int dummy; } ;
struct TYPE_2__ {struct usb_dev_state* port_owner; } ;


 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

void usb_hub_release_all_ports(struct usb_device *hdev, struct usb_dev_state *owner)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(hdev);
 int n;

 for (n = 0; n < hdev->maxchild; n++) {
  if (hub->ports[n]->port_owner == owner)
   hub->ports[n]->port_owner = ((void*)0);
 }

}
