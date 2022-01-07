
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct acm* driver_data; } ;
struct serial_struct {int close_delay; int closing_wait; } ;
struct TYPE_2__ {unsigned int close_delay; unsigned int closing_wait; int mutex; } ;
struct acm {TYPE_1__ port; } ;


 int ASYNC_CLOSING_WAIT_NONE ;
 int CAP_SYS_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;
 int capable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int set_serial_info(struct tty_struct *tty, struct serial_struct *ss)
{
 struct acm *acm = tty->driver_data;
 unsigned int closing_wait, close_delay;
 int retval = 0;

 close_delay = ss->close_delay * 10;
 closing_wait = ss->closing_wait == ASYNC_CLOSING_WAIT_NONE ?
   ASYNC_CLOSING_WAIT_NONE : ss->closing_wait * 10;

 mutex_lock(&acm->port.mutex);

 if (!capable(CAP_SYS_ADMIN)) {
  if ((close_delay != acm->port.close_delay) ||
      (closing_wait != acm->port.closing_wait))
   retval = -EPERM;
  else
   retval = -EOPNOTSUPP;
 } else {
  acm->port.close_delay = close_delay;
  acm->port.closing_wait = closing_wait;
 }

 mutex_unlock(&acm->port.mutex);
 return retval;
}
