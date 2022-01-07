
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int write_fifo; int port_number; int minor; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int baud_base; void* closing_wait; void* close_delay; scalar_t__ custom_divisor; int xmit_fifo_size; int port; int line; int type; } ;


 void* CLOSING_DELAY ;
 int PORT_16654 ;
 int kfifo_size (int *) ;

__attribute__((used)) static int whiteheat_get_serial(struct tty_struct *tty,
    struct serial_struct *ss)
{
 struct usb_serial_port *port = tty->driver_data;

 ss->type = PORT_16654;
 ss->line = port->minor;
 ss->port = port->port_number;
 ss->xmit_fifo_size = kfifo_size(&port->write_fifo);
 ss->custom_divisor = 0;
 ss->baud_base = 460800;
 ss->close_delay = CLOSING_DELAY;
 ss->closing_wait = CLOSING_DELAY;

 return 0;
}
