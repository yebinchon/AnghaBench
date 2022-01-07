
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; int minor; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int baud_base; int port; int line; int type; } ;


 int PORT_16654 ;

__attribute__((used)) static int ark3116_get_serial_info(struct tty_struct *tty,
   struct serial_struct *ss)
{
 struct usb_serial_port *port = tty->driver_data;

 ss->type = PORT_16654;
 ss->line = port->minor;
 ss->port = port->port_number;
 ss->baud_base = 460800;
 return 0;
}
