
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct f81232_private {int modem_control; int modem_status; int lock; } ;


 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DSR ;
 int UART_MSR_RI ;
 int f81232_read_msr (struct usb_serial_port*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f81232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int f81232_tiocmget(struct tty_struct *tty)
{
 int r;
 struct usb_serial_port *port = tty->driver_data;
 struct f81232_private *port_priv = usb_get_serial_port_data(port);
 u8 mcr, msr;


 f81232_read_msr(port);

 mutex_lock(&port_priv->lock);
 mcr = port_priv->modem_control;
 msr = port_priv->modem_status;
 mutex_unlock(&port_priv->lock);

 r = (mcr & UART_MCR_DTR ? TIOCM_DTR : 0) |
  (mcr & UART_MCR_RTS ? TIOCM_RTS : 0) |
  (msr & UART_MSR_CTS ? TIOCM_CTS : 0) |
  (msr & UART_MSR_DCD ? TIOCM_CAR : 0) |
  (msr & UART_MSR_RI ? TIOCM_RI : 0) |
  (msr & UART_MSR_DSR ? TIOCM_DSR : 0);

 return r;
}
