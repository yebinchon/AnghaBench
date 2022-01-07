
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct ipw_tty* driver_data; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct ipw_tty {int ipw_tty_mutex; TYPE_1__ port; } ;


 int do_ipw_close (struct ipw_tty*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ipw_hangup(struct tty_struct *linux_tty)
{
 struct ipw_tty *tty = linux_tty->driver_data;

 if (!tty)
  return;

 mutex_lock(&tty->ipw_tty_mutex);
 if (tty->port.count == 0) {
  mutex_unlock(&tty->ipw_tty_mutex);
  return;
 }

 do_ipw_close(tty);

 mutex_unlock(&tty->ipw_tty_mutex);
}
