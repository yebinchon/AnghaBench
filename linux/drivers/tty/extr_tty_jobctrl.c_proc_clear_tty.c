
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_kref_put (struct tty_struct*) ;

void proc_clear_tty(struct task_struct *p)
{
 unsigned long flags;
 struct tty_struct *tty;
 spin_lock_irqsave(&p->sighand->siglock, flags);
 tty = p->signal->tty;
 p->signal->tty = ((void*)0);
 spin_unlock_irqrestore(&p->sighand->siglock, flags);
 tty_kref_put(tty);
}
