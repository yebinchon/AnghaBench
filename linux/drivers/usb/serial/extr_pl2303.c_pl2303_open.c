
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {int interrupt_in_urb; int dev; TYPE_2__* read_urb; TYPE_1__* write_urb; struct usb_serial* serial; } ;
struct usb_serial {int dev; } ;
struct tty_struct {int dummy; } ;
struct pl2303_serial_private {int quirks; } ;
struct TYPE_4__ {int pipe; } ;
struct TYPE_3__ {int pipe; } ;


 int GFP_KERNEL ;
 int PL2303_QUIRK_LEGACY ;
 int dev_err (int *,char*,int) ;
 int pl2303_set_termios (struct tty_struct*,struct usb_serial_port*,int *) ;
 int pl2303_vendor_write (struct usb_serial*,int,int ) ;
 int usb_clear_halt (int ,int ) ;
 struct pl2303_serial_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_kill_urb (int ) ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int pl2303_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct pl2303_serial_private *spriv = usb_get_serial_data(serial);
 int result;

 if (spriv->quirks & PL2303_QUIRK_LEGACY) {
  usb_clear_halt(serial->dev, port->write_urb->pipe);
  usb_clear_halt(serial->dev, port->read_urb->pipe);
 } else {

  pl2303_vendor_write(serial, 8, 0);
  pl2303_vendor_write(serial, 9, 0);
 }


 if (tty)
  pl2303_set_termios(tty, port, ((void*)0));

 result = usb_submit_urb(port->interrupt_in_urb, GFP_KERNEL);
 if (result) {
  dev_err(&port->dev, "failed to submit interrupt urb: %d\n",
   result);
  return result;
 }

 result = usb_serial_generic_open(tty, port);
 if (result) {
  usb_kill_urb(port->interrupt_in_urb);
  return result;
 }

 return 0;
}
