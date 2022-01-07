
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* set_serial ) (struct tty_struct*,struct serial_struct*) ;} ;


 int ENOTTY ;
 int stub1 (struct tty_struct*,struct serial_struct*) ;

__attribute__((used)) static int serial_set_serial(struct tty_struct *tty, struct serial_struct *ss)
{
 struct usb_serial_port *port = tty->driver_data;

 if (port->serial->type->set_serial)
  return port->serial->type->set_serial(tty, ss);
 return -ENOTTY;
}
