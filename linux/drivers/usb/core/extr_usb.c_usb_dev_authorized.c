
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hub {TYPE_1__** ports; } ;
struct usb_hcd {int dev_policy; } ;
struct usb_device {int portnum; int parent; } ;
struct TYPE_2__ {int connect_type; } ;





 int USB_PORT_CONNECT_TYPE_HARD_WIRED ;
 struct usb_hub* usb_hub_to_struct_hub (int ) ;

__attribute__((used)) static bool usb_dev_authorized(struct usb_device *dev, struct usb_hcd *hcd)
{
 struct usb_hub *hub;

 if (!dev->parent)
  return 1;

 switch (hcd->dev_policy) {
 case 128:
 default:
  return 0;

 case 130:
  return 1;

 case 129:
  hub = usb_hub_to_struct_hub(dev->parent);
  return hub->ports[dev->portnum - 1]->connect_type ==
    USB_PORT_CONNECT_TYPE_HARD_WIRED;
 }
}
