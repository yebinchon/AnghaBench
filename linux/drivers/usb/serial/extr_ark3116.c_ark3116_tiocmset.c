
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ark3116_private {int hw_lock; int mcr; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_OUT1 ;
 unsigned int TIOCM_OUT2 ;
 unsigned int TIOCM_RTS ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT1 ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 int ark3116_write_reg (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ark3116_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int ark3116_tiocmset(struct tty_struct *tty,
   unsigned set, unsigned clr)
{
 struct usb_serial_port *port = tty->driver_data;
 struct ark3116_private *priv = usb_get_serial_port_data(port);





 mutex_lock(&priv->hw_lock);

 if (set & TIOCM_RTS)
  priv->mcr |= UART_MCR_RTS;
 if (set & TIOCM_DTR)
  priv->mcr |= UART_MCR_DTR;
 if (set & TIOCM_OUT1)
  priv->mcr |= UART_MCR_OUT1;
 if (set & TIOCM_OUT2)
  priv->mcr |= UART_MCR_OUT2;
 if (clr & TIOCM_RTS)
  priv->mcr &= ~UART_MCR_RTS;
 if (clr & TIOCM_DTR)
  priv->mcr &= ~UART_MCR_DTR;
 if (clr & TIOCM_OUT1)
  priv->mcr &= ~UART_MCR_OUT1;
 if (clr & TIOCM_OUT2)
  priv->mcr &= ~UART_MCR_OUT2;

 ark3116_write_reg(port->serial, UART_MCR, priv->mcr);

 mutex_unlock(&priv->hw_lock);

 return 0;
}
