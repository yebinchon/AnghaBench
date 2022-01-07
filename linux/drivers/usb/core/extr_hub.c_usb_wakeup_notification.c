
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_port {TYPE_1__* child; } ;
struct usb_hub {int wakeup_bits; struct usb_port** ports; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int kick_hub_wq (struct usb_hub*) ;
 int pm_wakeup_event (int *,int ) ;
 int set_bit (unsigned int,int ) ;
 struct usb_hub* usb_hub_to_struct_hub (struct usb_device*) ;

void usb_wakeup_notification(struct usb_device *hdev,
  unsigned int portnum)
{
 struct usb_hub *hub;
 struct usb_port *port_dev;

 if (!hdev)
  return;

 hub = usb_hub_to_struct_hub(hdev);
 if (hub) {
  port_dev = hub->ports[portnum - 1];
  if (port_dev && port_dev->child)
   pm_wakeup_event(&port_dev->child->dev, 0);

  set_bit(portnum, hub->wakeup_bits);
  kick_hub_wq(hub);
 }
}
