
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_serial_port {int dev; TYPE_4__* serial; } ;
struct usb_interface {TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {scalar_t__ wMaxPacketSize; } ;
struct ftdi_private {int max_packet_size; } ;
struct TYPE_8__ {struct usb_interface* interface; } ;
struct TYPE_5__ {unsigned int bNumEndpoints; } ;
struct TYPE_7__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;


 scalar_t__ cpu_to_le16 (int) ;
 int dev_warn (int *,char*,int ) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ftdi_set_max_packet_size(struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);
 struct usb_interface *interface = port->serial->interface;
 struct usb_endpoint_descriptor *ep_desc;
 unsigned num_endpoints;
 unsigned i;

 num_endpoints = interface->cur_altsetting->desc.bNumEndpoints;
 if (!num_endpoints)
  return;







 for (i = 0; i < num_endpoints; i++) {
  ep_desc = &interface->cur_altsetting->endpoint[i].desc;
  if (!ep_desc->wMaxPacketSize) {
   ep_desc->wMaxPacketSize = cpu_to_le16(0x40);
   dev_warn(&port->dev, "Overriding wMaxPacketSize on endpoint %d\n",
     usb_endpoint_num(ep_desc));
  }
 }


 priv->max_packet_size = usb_endpoint_maxp(ep_desc);
}
