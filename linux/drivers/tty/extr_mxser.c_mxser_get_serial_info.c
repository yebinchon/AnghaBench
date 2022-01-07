
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; struct mxser_port* driver_data; } ;
struct tty_port {int mutex; int closing_wait; int close_delay; int flags; } ;
struct serial_struct {int custom_divisor; int closing_wait; int close_delay; int baud_base; int flags; int irq; int port; int line; int type; } ;
struct mxser_port {int custom_divisor; struct tty_port port; int baud_base; TYPE_1__* board; int ioaddr; int type; } ;
struct TYPE_2__ {int irq; } ;


 int ENOTTY ;
 int MXSER_PORTS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mxser_get_serial_info(struct tty_struct *tty,
  struct serial_struct *ss)
{
 struct mxser_port *info = tty->driver_data;
 struct tty_port *port = &info->port;

 if (tty->index == MXSER_PORTS)
  return -ENOTTY;

 mutex_lock(&port->mutex);
 ss->type = info->type,
 ss->line = tty->index,
 ss->port = info->ioaddr,
 ss->irq = info->board->irq,
 ss->flags = info->port.flags,
 ss->baud_base = info->baud_base,
 ss->close_delay = info->port.close_delay,
 ss->closing_wait = info->port.closing_wait,
 ss->custom_divisor = info->custom_divisor,
 mutex_unlock(&port->mutex);
 return 0;
}
