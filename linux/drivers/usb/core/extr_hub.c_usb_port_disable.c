
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hub {int dummy; } ;
struct usb_device {int portnum; int parent; } ;


 int hub_port_disable (struct usb_hub*,int ,int ) ;
 struct usb_hub* usb_hub_to_struct_hub (int ) ;

int usb_port_disable(struct usb_device *udev)
{
 struct usb_hub *hub = usb_hub_to_struct_hub(udev->parent);

 return hub_port_disable(hub, udev->portnum, 0);
}
