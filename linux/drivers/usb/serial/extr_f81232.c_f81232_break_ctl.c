
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct f81232_private {int lock; int shadow_lcr; } ;


 int LINE_CONTROL_REGISTER ;
 int UART_LCR_SBC ;
 int dev_err (int *,char*,int) ;
 int f81232_set_register (struct usb_serial_port*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f81232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void f81232_break_ctl(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 struct f81232_private *priv = usb_get_serial_port_data(port);
 int status;

 mutex_lock(&priv->lock);

 if (break_state)
  priv->shadow_lcr |= UART_LCR_SBC;
 else
  priv->shadow_lcr &= ~UART_LCR_SBC;

 status = f81232_set_register(port, LINE_CONTROL_REGISTER,
     priv->shadow_lcr);
 if (status)
  dev_err(&port->dev, "set break failed: %d\n", status);

 mutex_unlock(&priv->lock);
}
