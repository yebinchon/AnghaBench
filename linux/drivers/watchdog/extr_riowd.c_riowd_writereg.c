
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct riowd {int lock; scalar_t__ regs; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void riowd_writereg(struct riowd *p, u8 val, int index)
{
 unsigned long flags;

 spin_lock_irqsave(&p->lock, flags);
 writeb(index, p->regs + 0);
 writeb(val, p->regs + 1);
 spin_unlock_irqrestore(&p->lock, flags);
}
