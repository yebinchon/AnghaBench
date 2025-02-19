
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ index; struct mxser_port* driver_data; } ;
struct tty_port {unsigned int flags; scalar_t__ close_delay; int closing_wait; int low_latency; int mutex; } ;
struct serial_struct {scalar_t__ irq; scalar_t__ port; scalar_t__ baud_base; scalar_t__ close_delay; int flags; int closing_wait; scalar_t__ custom_divisor; int type; } ;
struct mxser_port {scalar_t__ ioaddr; scalar_t__ baud_base; scalar_t__ custom_divisor; int slock; int type; struct tty_port port; TYPE_1__* board; } ;
typedef int speed_t ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int ASYNC_FLAGS ;
 int ASYNC_LOW_LATENCY ;
 unsigned int ASYNC_SPD_CUST ;
 unsigned int ASYNC_SPD_MASK ;
 int ASYNC_USR_MASK ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOTTY ;
 int EPERM ;
 int HZ ;
 scalar_t__ MXSER_PORTS ;
 int capable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mxser_activate (struct tty_port*,struct tty_struct*) ;
 int mxser_change_speed (struct tty_struct*) ;
 int process_txrx_fifo (struct mxser_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_encode_baud_rate (struct tty_struct*,int,int) ;
 scalar_t__ tty_io_error (struct tty_struct*) ;
 scalar_t__ tty_port_initialized (struct tty_port*) ;
 int tty_port_set_initialized (struct tty_port*,int) ;

__attribute__((used)) static int mxser_set_serial_info(struct tty_struct *tty,
  struct serial_struct *ss)
{
 struct mxser_port *info = tty->driver_data;
 struct tty_port *port = &info->port;
 speed_t baud;
 unsigned long sl_flags;
 unsigned int flags;
 int retval = 0;

 if (tty->index == MXSER_PORTS)
  return -ENOTTY;
 if (tty_io_error(tty))
  return -EIO;

 mutex_lock(&port->mutex);
 if (!info->ioaddr) {
  mutex_unlock(&port->mutex);
  return -ENODEV;
 }

 if (ss->irq != info->board->irq ||
   ss->port != info->ioaddr) {
  mutex_unlock(&port->mutex);
  return -EINVAL;
 }

 flags = port->flags & ASYNC_SPD_MASK;

 if (!capable(CAP_SYS_ADMIN)) {
  if ((ss->baud_base != info->baud_base) ||
    (ss->close_delay != info->port.close_delay) ||
    ((ss->flags & ~ASYNC_USR_MASK) != (info->port.flags & ~ASYNC_USR_MASK))) {
   mutex_unlock(&port->mutex);
   return -EPERM;
  }
  info->port.flags = ((info->port.flags & ~ASYNC_USR_MASK) |
    (ss->flags & ASYNC_USR_MASK));
 } else {




  port->flags = ((port->flags & ~ASYNC_FLAGS) |
    (ss->flags & ASYNC_FLAGS));
  port->close_delay = ss->close_delay * HZ / 100;
  port->closing_wait = ss->closing_wait * HZ / 100;
  port->low_latency = (port->flags & ASYNC_LOW_LATENCY) ? 1 : 0;
  if ((port->flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST &&
    (ss->baud_base != info->baud_base ||
    ss->custom_divisor !=
    info->custom_divisor)) {
   if (ss->custom_divisor == 0) {
    mutex_unlock(&port->mutex);
    return -EINVAL;
   }
   baud = ss->baud_base / ss->custom_divisor;
   tty_encode_baud_rate(tty, baud, baud);
  }
 }

 info->type = ss->type;

 process_txrx_fifo(info);

 if (tty_port_initialized(port)) {
  if (flags != (port->flags & ASYNC_SPD_MASK)) {
   spin_lock_irqsave(&info->slock, sl_flags);
   mxser_change_speed(tty);
   spin_unlock_irqrestore(&info->slock, sl_flags);
  }
 } else {
  retval = mxser_activate(port, tty);
  if (retval == 0)
   tty_port_set_initialized(port, 1);
 }
 mutex_unlock(&port->mutex);
 return retval;
}
