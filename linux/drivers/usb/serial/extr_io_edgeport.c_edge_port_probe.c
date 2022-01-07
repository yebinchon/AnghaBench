
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct edgeport_port {struct usb_serial_port* port; int ep_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct edgeport_port* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct edgeport_port*) ;

__attribute__((used)) static int edge_port_probe(struct usb_serial_port *port)
{
 struct edgeport_port *edge_port;

 edge_port = kzalloc(sizeof(*edge_port), GFP_KERNEL);
 if (!edge_port)
  return -ENOMEM;

 spin_lock_init(&edge_port->ep_lock);
 edge_port->port = port;

 usb_set_serial_port_data(port, edge_port);

 return 0;
}
