
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct mxuport_port {int mutex; int mcr_state; } ;


 int RQ_VENDOR_SET_DTR ;
 int UART_MCR_DTR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mxuport_send_ctrl_urb (struct usb_serial*,int ,int,int ) ;
 struct mxuport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mxuport_set_dtr(struct usb_serial_port *port, int on)
{
 struct mxuport_port *mxport = usb_get_serial_port_data(port);
 struct usb_serial *serial = port->serial;
 int err;

 mutex_lock(&mxport->mutex);

 err = mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_DTR,
        !!on, port->port_number);
 if (!err) {
  if (on)
   mxport->mcr_state |= UART_MCR_DTR;
  else
   mxport->mcr_state &= ~UART_MCR_DTR;
 }

 mutex_unlock(&mxport->mutex);

 return err;
}
