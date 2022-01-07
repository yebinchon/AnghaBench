
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct fwtty_port* driver_data; } ;
struct serial_struct {int baud_base; int close_delay; int xmit_fifo_size; int flags; int line; int type; } ;
struct TYPE_4__ {int mutex; int close_delay; int flags; TYPE_1__* tty; } ;
struct fwtty_port {TYPE_2__ port; } ;
struct TYPE_3__ {int index; } ;


 int FWTTY_PORT_TXFIFO_LEN ;
 int PORT_UNKNOWN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int get_serial_info(struct tty_struct *tty,
      struct serial_struct *ss)
{
 struct fwtty_port *port = tty->driver_data;

 mutex_lock(&port->port.mutex);
 ss->type = PORT_UNKNOWN;
 ss->line = port->port.tty->index;
 ss->flags = port->port.flags;
 ss->xmit_fifo_size = FWTTY_PORT_TXFIFO_LEN;
 ss->baud_base = 400000000;
 ss->close_delay = port->port.close_delay;
 mutex_unlock(&port->port.mutex);
 return 0;
}
