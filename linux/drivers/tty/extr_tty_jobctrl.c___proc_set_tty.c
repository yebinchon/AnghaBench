
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tty_struct {int * session; int ctrl_lock; int * pgrp; } ;
struct TYPE_9__ {TYPE_1__* signal; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int * tty_old_pgrp; TYPE_2__* tty; } ;


 TYPE_4__* current ;
 void* get_pid (int ) ;
 int put_pid (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_pgrp (TYPE_4__*) ;
 int task_session (TYPE_4__*) ;
 int tty_debug (struct tty_struct*,char*,int ) ;
 TYPE_2__* tty_kref_get (struct tty_struct*) ;
 int tty_kref_put (TYPE_2__*) ;

__attribute__((used)) static void __proc_set_tty(struct tty_struct *tty)
{
 unsigned long flags;

 spin_lock_irqsave(&tty->ctrl_lock, flags);




 put_pid(tty->session);
 put_pid(tty->pgrp);
 tty->pgrp = get_pid(task_pgrp(current));
 spin_unlock_irqrestore(&tty->ctrl_lock, flags);
 tty->session = get_pid(task_session(current));
 if (current->signal->tty) {
  tty_debug(tty, "current tty %s not NULL!!\n",
     current->signal->tty->name);
  tty_kref_put(current->signal->tty);
 }
 put_pid(current->signal->tty_old_pgrp);
 current->signal->tty = tty_kref_get(tty);
 current->signal->tty_old_pgrp = ((void*)0);
}
