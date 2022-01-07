
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct moschip_port {struct usb_serial_port* port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct moschip_port* kzalloc (int,int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct moschip_port*) ;

__attribute__((used)) static int mos7720_port_probe(struct usb_serial_port *port)
{
 struct moschip_port *mos7720_port;

 mos7720_port = kzalloc(sizeof(*mos7720_port), GFP_KERNEL);
 if (!mos7720_port)
  return -ENOMEM;

 mos7720_port->port = port;

 usb_set_serial_port_data(port, mos7720_port);

 return 0;
}
