
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct keyspan_serial_private {struct keyspan_device_details* device_details; } ;
struct keyspan_device_details {int msg_format; } ;


 int keyspan_usa26_send_setup (struct usb_serial*,struct usb_serial_port*,int) ;
 int keyspan_usa28_send_setup (struct usb_serial*,struct usb_serial_port*,int) ;
 int keyspan_usa49_send_setup (struct usb_serial*,struct usb_serial_port*,int) ;
 int keyspan_usa67_send_setup (struct usb_serial*,struct usb_serial_port*,int) ;
 int keyspan_usa90_send_setup (struct usb_serial*,struct usb_serial_port*,int) ;





 struct keyspan_serial_private* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void keyspan_send_setup(struct usb_serial_port *port, int reset_port)
{
 struct usb_serial *serial = port->serial;
 struct keyspan_serial_private *s_priv;
 const struct keyspan_device_details *d_details;

 s_priv = usb_get_serial_data(serial);
 d_details = s_priv->device_details;

 switch (d_details->msg_format) {
 case 132:
  keyspan_usa26_send_setup(serial, port, reset_port);
  break;
 case 131:
  keyspan_usa28_send_setup(serial, port, reset_port);
  break;
 case 130:
  keyspan_usa49_send_setup(serial, port, reset_port);
  break;
 case 128:
  keyspan_usa90_send_setup(serial, port, reset_port);
  break;
 case 129:
  keyspan_usa67_send_setup(serial, port, reset_port);
  break;
 }
}
