
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; int dev; } ;
struct tty_struct {int dummy; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int usb_kill_urb (int ) ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int belkin_sa_open(struct tty_struct *tty,
     struct usb_serial_port *port)
{
 int retval;

 retval = usb_submit_urb(port->interrupt_in_urb, GFP_KERNEL);
 if (retval) {
  dev_err(&port->dev, "usb_submit_urb(read int) failed\n");
  return retval;
 }

 retval = usb_serial_generic_open(tty, port);
 if (retval)
  usb_kill_urb(port->interrupt_in_urb);

 return retval;
}
