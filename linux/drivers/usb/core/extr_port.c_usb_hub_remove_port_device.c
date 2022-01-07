
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int dev; struct usb_port* peer; } ;
struct usb_hub {struct usb_port** ports; } ;


 int device_unregister (int *) ;
 int unlink_peers (struct usb_port*,struct usb_port*) ;

void usb_hub_remove_port_device(struct usb_hub *hub, int port1)
{
 struct usb_port *port_dev = hub->ports[port1 - 1];
 struct usb_port *peer;

 peer = port_dev->peer;
 if (peer)
  unlink_peers(port_dev, peer);
 device_unregister(&port_dev->dev);
}
