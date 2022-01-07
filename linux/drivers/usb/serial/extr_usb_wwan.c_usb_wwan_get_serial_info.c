
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int close_delay; int closing_wait; int tty; } ;
struct usb_serial_port {TYPE_1__ port; int port_number; int minor; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int close_delay; int closing_wait; int baud_base; int port; int line; } ;


 int ASYNC_CLOSING_WAIT_NONE ;
 int tty_get_baud_rate (int ) ;

int usb_wwan_get_serial_info(struct tty_struct *tty,
      struct serial_struct *ss)
{
 struct usb_serial_port *port = tty->driver_data;

 ss->line = port->minor;
 ss->port = port->port_number;
 ss->baud_base = tty_get_baud_rate(port->port.tty);
 ss->close_delay = port->port.close_delay / 10;
 ss->closing_wait = port->port.closing_wait == ASYNC_CLOSING_WAIT_NONE ?
     ASYNC_CLOSING_WAIT_NONE :
     port->port.closing_wait / 10;
 return 0;
}
