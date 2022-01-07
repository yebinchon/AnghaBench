
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int ctrl_lock; int pgrp; } ;
struct pid {int dummy; } ;


 struct pid* get_pid (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct pid *tty_get_pgrp(struct tty_struct *tty)
{
 unsigned long flags;
 struct pid *pgrp;

 spin_lock_irqsave(&tty->ctrl_lock, flags);
 pgrp = get_pid(tty->pgrp);
 spin_unlock_irqrestore(&tty->ctrl_lock, flags);

 return pgrp;
}
