
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int f81534_update_mctrl (struct usb_serial_port*,unsigned int,unsigned int) ;

__attribute__((used)) static int f81534_tiocmset(struct tty_struct *tty, unsigned int set,
    unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;

 return f81534_update_mctrl(port, set, clear);
}
