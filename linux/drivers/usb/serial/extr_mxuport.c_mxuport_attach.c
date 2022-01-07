
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct usb_serial {struct usb_serial_port** port; } ;


 int GFP_KERNEL ;
 int usb_serial_generic_close (struct usb_serial_port*) ;
 int usb_serial_generic_submit_read_urbs (struct usb_serial_port*,int ) ;

__attribute__((used)) static int mxuport_attach(struct usb_serial *serial)
{
 struct usb_serial_port *port0 = serial->port[0];
 struct usb_serial_port *port1 = serial->port[1];
 int err;
 err = usb_serial_generic_submit_read_urbs(port0, GFP_KERNEL);
 if (err)
  return err;

 err = usb_serial_generic_submit_read_urbs(port1, GFP_KERNEL);
 if (err) {
  usb_serial_generic_close(port0);
  return err;
 }

 return 0;
}
