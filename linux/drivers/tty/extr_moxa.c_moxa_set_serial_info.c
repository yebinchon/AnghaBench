
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ index; struct moxa_port* driver_data; } ;
struct serial_struct {scalar_t__ irq; scalar_t__ port; scalar_t__ custom_divisor; int baud_base; int flags; int close_delay; scalar_t__ type; } ;
struct TYPE_2__ {int flags; int close_delay; int mutex; } ;
struct moxa_port {scalar_t__ type; TYPE_1__ port; } ;


 int ASYNC_USR_MASK ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int HZ ;
 scalar_t__ MAX_PORTS ;
 int MoxaSetFifo (struct moxa_port*,int) ;
 scalar_t__ PORT_16550A ;
 int capable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int moxa_set_serial_info(struct tty_struct *tty,
  struct serial_struct *ss)
{
 struct moxa_port *info = tty->driver_data;

 if (tty->index == MAX_PORTS)
  return -EINVAL;
 if (!info)
  return -ENODEV;

 if (ss->irq != 0 || ss->port != 0 ||
   ss->custom_divisor != 0 ||
   ss->baud_base != 921600)
  return -EPERM;

 mutex_lock(&info->port.mutex);
 if (!capable(CAP_SYS_ADMIN)) {
  if (((ss->flags & ~ASYNC_USR_MASK) !=
       (info->port.flags & ~ASYNC_USR_MASK))) {
   mutex_unlock(&info->port.mutex);
   return -EPERM;
  }
 }
 info->port.close_delay = ss->close_delay * HZ / 100;

 MoxaSetFifo(info, ss->type == PORT_16550A);

 info->type = ss->type;
 mutex_unlock(&info->port.mutex);
 return 0;
}
