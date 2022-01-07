
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_struct {int xmit_fifo_size; int baud_base; int close_delay; int closing_wait; scalar_t__ irq; int port; int line; int type; } ;
struct moschip_port {TYPE_1__* port; } ;
struct TYPE_2__ {int port_number; int minor; } ;


 int HZ ;
 int NUM_URBS ;
 int PORT_16550A ;
 int URB_TRANSFER_BUFFER_SIZE ;
 struct moschip_port* mos7840_get_port_private (struct usb_serial_port*) ;

__attribute__((used)) static int mos7840_get_serial_info(struct tty_struct *tty,
       struct serial_struct *ss)
{
 struct usb_serial_port *port = tty->driver_data;
 struct moschip_port *mos7840_port = mos7840_get_port_private(port);

 ss->type = PORT_16550A;
 ss->line = mos7840_port->port->minor;
 ss->port = mos7840_port->port->port_number;
 ss->irq = 0;
 ss->xmit_fifo_size = NUM_URBS * URB_TRANSFER_BUFFER_SIZE;
 ss->baud_base = 9600;
 ss->close_delay = 5 * HZ;
 ss->closing_wait = 30 * HZ;
 return 0;
}
