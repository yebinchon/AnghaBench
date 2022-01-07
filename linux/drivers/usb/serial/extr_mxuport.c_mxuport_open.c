
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {int dummy; } ;
struct mxuport_port {scalar_t__ msr_state; } ;


 int RQ_VENDOR_SET_OPEN ;
 int RQ_VENDOR_SET_RX_HOST_EN ;
 int mxuport_send_ctrl_urb (struct usb_serial*,int ,int,int ) ;
 int mxuport_set_termios (struct tty_struct*,struct usb_serial_port*,int *) ;
 struct mxuport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mxuport_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct mxuport_port *mxport = usb_get_serial_port_data(port);
 struct usb_serial *serial = port->serial;
 int err;


 err = mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_RX_HOST_EN,
        1, port->port_number);
 if (err)
  return err;

 err = mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_OPEN,
        1, port->port_number);
 if (err) {
  mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_RX_HOST_EN,
          0, port->port_number);
  return err;
 }


 if (tty)
  mxuport_set_termios(tty, port, ((void*)0));





 mxport->msr_state = 0;

 return err;
}
