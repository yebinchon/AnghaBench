
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void keyspan_pda_rx_throttle(struct tty_struct *tty)
{






 struct usb_serial_port *port = tty->driver_data;

 usb_kill_urb(port->interrupt_in_urb);
}
