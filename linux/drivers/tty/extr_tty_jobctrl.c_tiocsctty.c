
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {scalar_t__ session; } ;
struct file {int f_mode; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {scalar_t__ tty; scalar_t__ leader; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int FMODE_READ ;
 scalar_t__ capable (int ) ;
 TYPE_2__* current ;
 int proc_set_tty (struct tty_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int session_clear_tty (scalar_t__) ;
 scalar_t__ task_session (TYPE_2__*) ;
 int tasklist_lock ;
 int tty_lock (struct tty_struct*) ;
 int tty_unlock (struct tty_struct*) ;

__attribute__((used)) static int tiocsctty(struct tty_struct *tty, struct file *file, int arg)
{
 int ret = 0;

 tty_lock(tty);
 read_lock(&tasklist_lock);

 if (current->signal->leader && (task_session(current) == tty->session))
  goto unlock;





 if (!current->signal->leader || current->signal->tty) {
  ret = -EPERM;
  goto unlock;
 }

 if (tty->session) {




  if (arg == 1 && capable(CAP_SYS_ADMIN)) {



   session_clear_tty(tty->session);
  } else {
   ret = -EPERM;
   goto unlock;
  }
 }


 if ((file->f_mode & FMODE_READ) == 0 && !capable(CAP_SYS_ADMIN)) {
  ret = -EPERM;
  goto unlock;
 }

 proc_set_tty(tty);
unlock:
 read_unlock(&tasklist_lock);
 tty_unlock(tty);
 return ret;
}
