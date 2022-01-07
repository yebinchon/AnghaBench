
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int write_wait; int read_wait; struct gsm_mux* disc_data; } ;
struct gsm_mux {scalar_t__ dead; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int EPOLLOUT ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int tty_is_writelocked (struct tty_struct*) ;
 scalar_t__ tty_write_room (struct tty_struct*) ;

__attribute__((used)) static __poll_t gsmld_poll(struct tty_struct *tty, struct file *file,
       poll_table *wait)
{
 __poll_t mask = 0;
 struct gsm_mux *gsm = tty->disc_data;

 poll_wait(file, &tty->read_wait, wait);
 poll_wait(file, &tty->write_wait, wait);
 if (tty_hung_up_p(file))
  mask |= EPOLLHUP;
 if (!tty_is_writelocked(tty) && tty_write_room(tty) > 0)
  mask |= EPOLLOUT | EPOLLWRNORM;
 if (gsm->dead)
  mask |= EPOLLHUP;
 return mask;
}
