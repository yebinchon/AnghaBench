
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int frame_list_dma; int lock; int dev; } ;


 int HCFG ;
 int HCFG_FRLISTEN_MASK ;
 int HCFG_PERSCHEDENA ;
 int HFLBADDR ;
 int dev_vdbg (int ,char*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dwc2_per_sched_enable(struct dwc2_hsotg *hsotg, u32 fr_list_en)
{
 u32 hcfg;
 unsigned long flags;

 spin_lock_irqsave(&hsotg->lock, flags);

 hcfg = dwc2_readl(hsotg, HCFG);
 if (hcfg & HCFG_PERSCHEDENA) {

  spin_unlock_irqrestore(&hsotg->lock, flags);
  return;
 }

 dwc2_writel(hsotg, hsotg->frame_list_dma, HFLBADDR);

 hcfg &= ~HCFG_FRLISTEN_MASK;
 hcfg |= fr_list_en | HCFG_PERSCHEDENA;
 dev_vdbg(hsotg->dev, "Enabling Periodic schedule\n");
 dwc2_writel(hsotg, hcfg, HCFG);

 spin_unlock_irqrestore(&hsotg->lock, flags);
}
