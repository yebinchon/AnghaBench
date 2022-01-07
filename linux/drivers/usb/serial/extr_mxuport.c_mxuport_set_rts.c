
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct mxuport_port {int mcr_state; int mutex; } ;


 int EINVAL ;



 int RQ_VENDOR_SET_RTS ;
 int UART_MCR_RTS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mxuport_send_ctrl_urb (struct usb_serial*,int ,int,int ) ;
 struct mxuport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mxuport_set_rts(struct usb_serial_port *port, u8 state)
{
 struct mxuport_port *mxport = usb_get_serial_port_data(port);
 struct usb_serial *serial = port->serial;
 int err;
 u8 mcr_state;

 mutex_lock(&mxport->mutex);
 mcr_state = mxport->mcr_state;

 switch (state) {
 case 130:
  mcr_state &= ~UART_MCR_RTS;
  break;
 case 129:
  mcr_state |= UART_MCR_RTS;
  break;
 case 128:




  break;
 default:




  err = -EINVAL;
  goto out;
 }
 err = mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_RTS,
        state, port->port_number);
 if (!err)
  mxport->mcr_state = mcr_state;

out:
 mutex_unlock(&mxport->mutex);

 return err;
}
