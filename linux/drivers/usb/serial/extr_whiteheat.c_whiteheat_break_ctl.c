
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int firm_set_break (struct usb_serial_port*,int) ;

__attribute__((used)) static void whiteheat_break_ctl(struct tty_struct *tty, int break_state)
{
 struct usb_serial_port *port = tty->driver_data;
 firm_set_break(port, break_state);
}
