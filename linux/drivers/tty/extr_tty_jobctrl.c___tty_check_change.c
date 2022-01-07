
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int ctrl_lock; struct pid* pgrp; } ;
struct pid {int dummy; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;


 int EIO ;
 int ERESTARTSYS ;
 int SIGTTIN ;
 int TIF_SIGPENDING ;
 TYPE_2__* current ;
 scalar_t__ is_current_pgrp_orphaned () ;
 scalar_t__ is_ignored (int) ;
 int kill_pgrp (struct pid*,int,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_thread_flag (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pid* task_pgrp (TYPE_2__*) ;
 int tty_warn (struct tty_struct*,char*,int) ;

int __tty_check_change(struct tty_struct *tty, int sig)
{
 unsigned long flags;
 struct pid *pgrp, *tty_pgrp;
 int ret = 0;

 if (current->signal->tty != tty)
  return 0;

 rcu_read_lock();
 pgrp = task_pgrp(current);

 spin_lock_irqsave(&tty->ctrl_lock, flags);
 tty_pgrp = tty->pgrp;
 spin_unlock_irqrestore(&tty->ctrl_lock, flags);

 if (tty_pgrp && pgrp != tty_pgrp) {
  if (is_ignored(sig)) {
   if (sig == SIGTTIN)
    ret = -EIO;
  } else if (is_current_pgrp_orphaned())
   ret = -EIO;
  else {
   kill_pgrp(pgrp, sig, 1);
   set_thread_flag(TIF_SIGPENDING);
   ret = -ERESTARTSYS;
  }
 }
 rcu_read_unlock();

 if (!tty_pgrp)
  tty_warn(tty, "sig=%d, tty->pgrp == NULL!\n", sig);

 return ret;
}
