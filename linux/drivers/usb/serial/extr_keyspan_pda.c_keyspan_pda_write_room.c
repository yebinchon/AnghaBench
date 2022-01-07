
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct keyspan_pda_private {int tx_room; } ;


 struct keyspan_pda_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int keyspan_pda_write_room(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct keyspan_pda_private *priv;
 priv = usb_get_serial_port_data(port);



 return priv->tx_room;
}
