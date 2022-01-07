
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int f81232_set_mctrl (struct usb_serial_port*,unsigned int,unsigned int) ;

__attribute__((used)) static int f81232_tiocmset(struct tty_struct *tty,
   unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;

 return f81232_set_mctrl(port, set, clear);
}
