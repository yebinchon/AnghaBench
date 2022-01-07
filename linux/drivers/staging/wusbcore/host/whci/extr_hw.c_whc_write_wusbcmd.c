
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct whc {int lock; scalar_t__ base; } ;


 scalar_t__ WUSBCMD ;
 int le_readl (scalar_t__) ;
 int le_writel (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void whc_write_wusbcmd(struct whc *whc, u32 mask, u32 val)
{
 unsigned long flags;
 u32 cmd;

 spin_lock_irqsave(&whc->lock, flags);

 cmd = le_readl(whc->base + WUSBCMD);
 cmd = (cmd & ~mask) | val;
 le_writel(cmd, whc->base + WUSBCMD);

 spin_unlock_irqrestore(&whc->lock, flags);
}
