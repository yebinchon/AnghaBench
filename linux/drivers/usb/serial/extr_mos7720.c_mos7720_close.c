
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {int port_number; TYPE_1__* read_urb; TYPE_1__* write_urb; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct moschip_port {scalar_t__ open; TYPE_1__** write_urb_pool; } ;
struct TYPE_3__ {int transfer_buffer; } ;


 int MOS7720_IER ;
 int MOS7720_MCR ;
 int NUM_URBS ;
 int kfree (int ) ;
 int usb_free_urb (TYPE_1__*) ;
 struct moschip_port* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (TYPE_1__*) ;
 int write_mos_reg (struct usb_serial*,int ,int ,int) ;

__attribute__((used)) static void mos7720_close(struct usb_serial_port *port)
{
 struct usb_serial *serial;
 struct moschip_port *mos7720_port;
 int j;

 serial = port->serial;

 mos7720_port = usb_get_serial_port_data(port);
 if (mos7720_port == ((void*)0))
  return;

 for (j = 0; j < NUM_URBS; ++j)
  usb_kill_urb(mos7720_port->write_urb_pool[j]);


 for (j = 0; j < NUM_URBS; ++j) {
  if (mos7720_port->write_urb_pool[j]) {
   kfree(mos7720_port->write_urb_pool[j]->transfer_buffer);
   usb_free_urb(mos7720_port->write_urb_pool[j]);
  }
 }



 usb_kill_urb(port->write_urb);
 usb_kill_urb(port->read_urb);

 write_mos_reg(serial, port->port_number, MOS7720_MCR, 0x00);
 write_mos_reg(serial, port->port_number, MOS7720_IER, 0x00);

 mos7720_port->open = 0;
}
