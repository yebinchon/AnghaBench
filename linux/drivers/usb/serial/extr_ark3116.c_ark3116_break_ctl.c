
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ark3116_private {int hw_lock; int lcr; } ;


 int UART_LCR ;
 int UART_LCR_SBC ;
 int ark3116_write_reg (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ark3116_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ark3116_break_ctl(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 struct ark3116_private *priv = usb_get_serial_port_data(port);


 mutex_lock(&priv->hw_lock);

 if (break_state)
  priv->lcr |= UART_LCR_SBC;
 else
  priv->lcr &= ~UART_LCR_SBC;

 ark3116_write_reg(port->serial, UART_LCR, priv->lcr);

 mutex_unlock(&priv->hw_lock);
}
