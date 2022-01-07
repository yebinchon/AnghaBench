
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * irqen; } ;


 int HALF_QUEUES ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int qmgr_lock ;
 TYPE_1__* qmgr_regs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void qmgr_enable_irq(unsigned int queue)
{
 unsigned long flags;
 int half = queue / 32;
 u32 mask = 1 << (queue & (HALF_QUEUES - 1));

 spin_lock_irqsave(&qmgr_lock, flags);
 __raw_writel(__raw_readl(&qmgr_regs->irqen[half]) | mask,
       &qmgr_regs->irqen[half]);
 spin_unlock_irqrestore(&qmgr_lock, flags);
}
