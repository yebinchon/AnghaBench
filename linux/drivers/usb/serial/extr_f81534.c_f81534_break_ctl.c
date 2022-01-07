
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct f81534_port_private {int lcr_mutex; int shadow_lcr; } ;


 int F81534_LINE_CONTROL_REG ;
 int UART_LCR_SBC ;
 int dev_err (int *,char*,int) ;
 int f81534_set_port_register (struct usb_serial_port*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f81534_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void f81534_break_ctl(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 struct f81534_port_private *port_priv = usb_get_serial_port_data(port);
 int status;

 mutex_lock(&port_priv->lcr_mutex);

 if (break_state)
  port_priv->shadow_lcr |= UART_LCR_SBC;
 else
  port_priv->shadow_lcr &= ~UART_LCR_SBC;

 status = f81534_set_port_register(port, F81534_LINE_CONTROL_REG,
     port_priv->shadow_lcr);
 if (status)
  dev_err(&port->dev, "set break failed: %d\n", status);

 mutex_unlock(&port_priv->lcr_mutex);
}
