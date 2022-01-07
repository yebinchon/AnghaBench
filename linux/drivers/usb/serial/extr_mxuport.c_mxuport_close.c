
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;


 int RQ_VENDOR_SET_OPEN ;
 int RQ_VENDOR_SET_RX_HOST_EN ;
 int mxuport_send_ctrl_urb (struct usb_serial*,int ,int ,int ) ;

__attribute__((used)) static void mxuport_close(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;

 mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_OPEN, 0,
         port->port_number);

 mxuport_send_ctrl_urb(serial, RQ_VENDOR_SET_RX_HOST_EN, 0,
         port->port_number);
}
