
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct usb_serial {struct usb_serial_port** port; } ;


 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void mxuport_release(struct usb_serial *serial)
{
 struct usb_serial_port *port0 = serial->port[0];
 struct usb_serial_port *port1 = serial->port[1];

 usb_serial_generic_close(port1);
 usb_serial_generic_close(port0);
}
