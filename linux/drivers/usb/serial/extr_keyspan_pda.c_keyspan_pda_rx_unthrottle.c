
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; int interrupt_in_urb; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static void keyspan_pda_rx_unthrottle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;


 if (usb_submit_urb(port->interrupt_in_urb, GFP_KERNEL))
  dev_dbg(&port->dev, "usb_submit_urb(read urb) failed\n");
}
