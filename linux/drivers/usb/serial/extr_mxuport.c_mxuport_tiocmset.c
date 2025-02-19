
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct mxuport_port {int mutex; int mcr_state; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mxuport_set_mcr (struct usb_serial_port*,int ) ;
 struct mxuport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mxuport_tiocmset(struct tty_struct *tty, unsigned int set,
       unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct mxuport_port *mxport = usb_get_serial_port_data(port);
 int err;
 u8 mcr_state;

 mutex_lock(&mxport->mutex);
 mcr_state = mxport->mcr_state;

 if (set & TIOCM_RTS)
  mcr_state |= UART_MCR_RTS;

 if (set & TIOCM_DTR)
  mcr_state |= UART_MCR_DTR;

 if (clear & TIOCM_RTS)
  mcr_state &= ~UART_MCR_RTS;

 if (clear & TIOCM_DTR)
  mcr_state &= ~UART_MCR_DTR;

 err = mxuport_set_mcr(port, mcr_state);
 if (!err)
  mxport->mcr_state = mcr_state;

 mutex_unlock(&mxport->mutex);

 return err;
}
