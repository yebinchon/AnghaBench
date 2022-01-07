
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__** write_urbs; } ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int transfer_flags; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int URB_ZERO_PACKET ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;

__attribute__((used)) static int ir_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(port->write_urbs); ++i)
  port->write_urbs[i]->transfer_flags = URB_ZERO_PACKET;


 return usb_serial_generic_open(tty, port);
}
