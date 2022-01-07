
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flow_lock; } ;


 int __stop_tty (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void stop_tty(struct tty_struct *tty)
{
 unsigned long flags;

 spin_lock_irqsave(&tty->flow_lock, flags);
 __stop_tty(tty);
 spin_unlock_irqrestore(&tty->flow_lock, flags);
}
