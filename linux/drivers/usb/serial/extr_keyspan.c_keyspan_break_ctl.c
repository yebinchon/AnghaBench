
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct keyspan_port_private {int break_on; } ;


 int keyspan_send_setup (struct usb_serial_port*,int ) ;
 struct keyspan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void keyspan_break_ctl(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 struct keyspan_port_private *p_priv;

 p_priv = usb_get_serial_port_data(port);

 if (break_state == -1)
  p_priv->break_on = 1;
 else
  p_priv->break_on = 0;

 keyspan_send_setup(port, 0);
}
