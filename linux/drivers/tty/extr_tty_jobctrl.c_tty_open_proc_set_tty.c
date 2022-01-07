
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int * session; } ;
struct file {int f_mode; } ;
struct TYPE_6__ {TYPE_1__* sighand; TYPE_2__* signal; } ;
struct TYPE_5__ {int tty; scalar_t__ leader; } ;
struct TYPE_4__ {int siglock; } ;


 int FMODE_READ ;
 int __proc_set_tty (struct tty_struct*) ;
 TYPE_3__* current ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklist_lock ;

void tty_open_proc_set_tty(struct file *filp, struct tty_struct *tty)
{
 read_lock(&tasklist_lock);
 spin_lock_irq(&current->sighand->siglock);
 if (current->signal->leader &&
     !current->signal->tty &&
     tty->session == ((void*)0)) {
  if (filp->f_mode & FMODE_READ)
   __proc_set_tty(tty);
 }
 spin_unlock_irq(&current->sighand->siglock);
 read_unlock(&tasklist_lock);
}
