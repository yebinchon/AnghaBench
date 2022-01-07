
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; int interrupt_in_urb; int port; } ;
struct usb_serial {struct usb_serial_port** port; } ;


 int GFP_NOIO ;
 int dev_err (int *,char*,int) ;
 scalar_t__ tty_port_initialized (int *) ;
 int usb_serial_generic_resume (struct usb_serial*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int f81232_resume(struct usb_serial *serial)
{
 struct usb_serial_port *port = serial->port[0];
 int result;

 if (tty_port_initialized(&port->port)) {
  result = usb_submit_urb(port->interrupt_in_urb, GFP_NOIO);
  if (result) {
   dev_err(&port->dev, "submit interrupt urb failed: %d\n",
     result);
   return result;
  }
 }

 return usb_serial_generic_resume(serial);
}
