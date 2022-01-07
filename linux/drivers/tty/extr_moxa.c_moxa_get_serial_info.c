
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {scalar_t__ index; struct moxa_port* driver_data; } ;
struct serial_struct {int baud_base; int close_delay; int flags; int line; int type; } ;
struct TYPE_4__ {int mutex; int close_delay; int flags; TYPE_1__* tty; } ;
struct moxa_port {TYPE_2__ port; int type; } ;
struct TYPE_3__ {int index; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ MAX_PORTS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int moxa_get_serial_info(struct tty_struct *tty,
  struct serial_struct *ss)
{
 struct moxa_port *info = tty->driver_data;

 if (tty->index == MAX_PORTS)
  return -EINVAL;
 if (!info)
  return -ENODEV;
 mutex_lock(&info->port.mutex);
 ss->type = info->type,
 ss->line = info->port.tty->index,
 ss->flags = info->port.flags,
 ss->baud_base = 921600,
 ss->close_delay = info->port.close_delay;
 mutex_unlock(&info->port.mutex);
 return 0;
}
