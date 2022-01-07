
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int minor; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int xmit_fifo_size; int baud_base; int close_delay; int closing_wait; scalar_t__ irq; int port; int line; int type; } ;


 int HZ ;
 int PORT_16550A ;

__attribute__((used)) static int get_serial_info(struct tty_struct *tty,
      struct serial_struct *ss)
{
 struct usb_serial_port *port = tty->driver_data;


 ss->type = PORT_16550A;
 ss->line = port->minor;
 ss->port = 0;
 ss->irq = 0;
 ss->xmit_fifo_size = 1024;
 ss->baud_base = 9600;
 ss->close_delay = 5*HZ;
 ss->closing_wait = 30*HZ;
 return 0;
}
