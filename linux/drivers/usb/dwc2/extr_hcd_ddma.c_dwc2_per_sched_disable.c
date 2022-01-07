
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int lock; int dev; } ;


 int HCFG ;
 int HCFG_PERSCHEDENA ;
 int dev_vdbg (int ,char*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dwc2_per_sched_disable(struct dwc2_hsotg *hsotg)
{
 u32 hcfg;
 unsigned long flags;

 spin_lock_irqsave(&hsotg->lock, flags);

 hcfg = dwc2_readl(hsotg, HCFG);
 if (!(hcfg & HCFG_PERSCHEDENA)) {

  spin_unlock_irqrestore(&hsotg->lock, flags);
  return;
 }

 hcfg &= ~HCFG_PERSCHEDENA;
 dev_vdbg(hsotg->dev, "Disabling Periodic schedule\n");
 dwc2_writel(hsotg, hcfg, HCFG);

 spin_unlock_irqrestore(&hsotg->lock, flags);
}
