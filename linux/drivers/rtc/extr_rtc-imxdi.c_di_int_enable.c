
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imxdi_dev {int irq_lock; scalar_t__ ioaddr; } ;


 scalar_t__ DIER ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void di_int_enable(struct imxdi_dev *imxdi, u32 intr)
{
 unsigned long flags;

 spin_lock_irqsave(&imxdi->irq_lock, flags);
 writel(readl(imxdi->ioaddr + DIER) | intr,
        imxdi->ioaddr + DIER);
 spin_unlock_irqrestore(&imxdi->irq_lock, flags);
}
