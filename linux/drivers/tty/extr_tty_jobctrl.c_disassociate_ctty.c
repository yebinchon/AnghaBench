
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tty_struct {int ctrl_lock; struct pid* pgrp; struct pid* session; TYPE_1__* driver; } ;
struct pid {int dummy; } ;
struct TYPE_9__ {TYPE_3__* sighand; TYPE_2__* signal; } ;
struct TYPE_8__ {int siglock; } ;
struct TYPE_7__ {int tty; struct pid* tty_old_pgrp; int leader; } ;
struct TYPE_6__ {scalar_t__ type; } ;


 int SIGCONT ;
 int SIGHUP ;
 scalar_t__ TTY_DRIVER_TYPE_PTY ;
 TYPE_4__* current ;
 struct tty_struct* get_current_tty () ;
 int kill_pgrp (struct pid*,int ,int) ;
 int put_pid (struct pid*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int session_clear_tty (int ) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_session (TYPE_4__*) ;
 int tasklist_lock ;
 struct pid* tty_get_pgrp (struct tty_struct*) ;
 struct tty_struct* tty_kref_get (int ) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_vhangup_session (struct tty_struct*) ;

void disassociate_ctty(int on_exit)
{
 struct tty_struct *tty;

 if (!current->signal->leader)
  return;

 tty = get_current_tty();
 if (tty) {
  if (on_exit && tty->driver->type != TTY_DRIVER_TYPE_PTY) {
   tty_vhangup_session(tty);
  } else {
   struct pid *tty_pgrp = tty_get_pgrp(tty);
   if (tty_pgrp) {
    kill_pgrp(tty_pgrp, SIGHUP, on_exit);
    if (!on_exit)
     kill_pgrp(tty_pgrp, SIGCONT, on_exit);
    put_pid(tty_pgrp);
   }
  }
  tty_kref_put(tty);

 } else if (on_exit) {
  struct pid *old_pgrp;
  spin_lock_irq(&current->sighand->siglock);
  old_pgrp = current->signal->tty_old_pgrp;
  current->signal->tty_old_pgrp = ((void*)0);
  spin_unlock_irq(&current->sighand->siglock);
  if (old_pgrp) {
   kill_pgrp(old_pgrp, SIGHUP, on_exit);
   kill_pgrp(old_pgrp, SIGCONT, on_exit);
   put_pid(old_pgrp);
  }
  return;
 }

 spin_lock_irq(&current->sighand->siglock);
 put_pid(current->signal->tty_old_pgrp);
 current->signal->tty_old_pgrp = ((void*)0);

 tty = tty_kref_get(current->signal->tty);
 if (tty) {
  unsigned long flags;
  spin_lock_irqsave(&tty->ctrl_lock, flags);
  put_pid(tty->session);
  put_pid(tty->pgrp);
  tty->session = ((void*)0);
  tty->pgrp = ((void*)0);
  spin_unlock_irqrestore(&tty->ctrl_lock, flags);
  tty_kref_put(tty);
 }

 spin_unlock_irq(&current->sighand->siglock);

 read_lock(&tasklist_lock);
 session_clear_tty(task_session(current));
 read_unlock(&tasklist_lock);
}
