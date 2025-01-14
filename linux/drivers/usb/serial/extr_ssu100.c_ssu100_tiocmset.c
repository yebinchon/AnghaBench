
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int update_mctrl (struct usb_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int ssu100_tiocmset(struct tty_struct *tty,
      unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct usb_device *dev = port->serial->dev;

 return update_mctrl(dev, set, clear);
}
