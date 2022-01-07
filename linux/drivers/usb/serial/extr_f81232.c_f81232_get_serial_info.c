
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; int minor; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int baud_base; int port; int line; int type; } ;
struct f81232_private {int baud_base; } ;


 int PORT_16550A ;
 struct f81232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int f81232_get_serial_info(struct tty_struct *tty,
  struct serial_struct *ss)
{
 struct usb_serial_port *port = tty->driver_data;
 struct f81232_private *priv = usb_get_serial_port_data(port);

 ss->type = PORT_16550A;
 ss->line = port->minor;
 ss->port = port->port_number;
 ss->baud_base = priv->baud_base;
 return 0;
}
