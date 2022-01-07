
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; struct isi_port* driver_data; } ;
struct serial_struct {int flags; scalar_t__ close_delay; scalar_t__ closing_wait; } ;
struct TYPE_4__ {int flags; scalar_t__ close_delay; scalar_t__ closing_wait; int mutex; } ;
struct isi_port {TYPE_2__ port; TYPE_1__* card; } ;
struct TYPE_3__ {int card_lock; } ;


 int ASYNC_FLAGS ;
 int ASYNC_SPD_MASK ;
 int ASYNC_USR_MASK ;
 int CAP_SYS_ADMIN ;
 int ENODEV ;
 int EPERM ;
 int capable (int ) ;
 int isicom_config_port (struct tty_struct*) ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int isicom_set_serial_info(struct tty_struct *tty,
     struct serial_struct *ss)
{
 struct isi_port *port = tty->driver_data;
 int reconfig_port;

 if (isicom_paranoia_check(port, tty->name, "isicom_ioctl"))
  return -ENODEV;

 mutex_lock(&port->port.mutex);
 reconfig_port = ((port->port.flags & ASYNC_SPD_MASK) !=
  (ss->flags & ASYNC_SPD_MASK));

 if (!capable(CAP_SYS_ADMIN)) {
  if ((ss->close_delay != port->port.close_delay) ||
    (ss->closing_wait != port->port.closing_wait) ||
    ((ss->flags & ~ASYNC_USR_MASK) !=
    (port->port.flags & ~ASYNC_USR_MASK))) {
   mutex_unlock(&port->port.mutex);
   return -EPERM;
  }
  port->port.flags = ((port->port.flags & ~ASYNC_USR_MASK) |
    (ss->flags & ASYNC_USR_MASK));
 } else {
  port->port.close_delay = ss->close_delay;
  port->port.closing_wait = ss->closing_wait;
  port->port.flags = ((port->port.flags & ~ASYNC_FLAGS) |
    (ss->flags & ASYNC_FLAGS));
 }
 if (reconfig_port) {
  unsigned long flags;
  spin_lock_irqsave(&port->card->card_lock, flags);
  isicom_config_port(tty);
  spin_unlock_irqrestore(&port->card->card_lock, flags);
 }
 mutex_unlock(&port->port.mutex);
 return 0;
}
