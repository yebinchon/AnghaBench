
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int power_down; } ;
struct dwc2_hsotg {int bus_suspended; int lock; TYPE_1__ params; } ;


 int HPRT0 ;
 int HPRT0_RES ;
 int HPRT0_SUSP ;
 int PCGCTL ;
 int PCGCTL_STOPPCLK ;
 int USB_RESUME_TIMEOUT ;
 int dwc2_read_hprt0 (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dwc2_port_resume(struct dwc2_hsotg *hsotg)
{
 unsigned long flags;
 u32 hprt0;
 u32 pcgctl;

 spin_lock_irqsave(&hsotg->lock, flags);





 if (!hsotg->params.power_down) {
  pcgctl = dwc2_readl(hsotg, PCGCTL);
  pcgctl &= ~PCGCTL_STOPPCLK;
  dwc2_writel(hsotg, pcgctl, PCGCTL);
  spin_unlock_irqrestore(&hsotg->lock, flags);
  msleep(20);
  spin_lock_irqsave(&hsotg->lock, flags);
 }

 hprt0 = dwc2_read_hprt0(hsotg);
 hprt0 |= HPRT0_RES;
 hprt0 &= ~HPRT0_SUSP;
 dwc2_writel(hsotg, hprt0, HPRT0);
 spin_unlock_irqrestore(&hsotg->lock, flags);

 msleep(USB_RESUME_TIMEOUT);

 spin_lock_irqsave(&hsotg->lock, flags);
 hprt0 = dwc2_read_hprt0(hsotg);
 hprt0 &= ~(HPRT0_RES | HPRT0_SUSP);
 dwc2_writel(hsotg, hprt0, HPRT0);
 hsotg->bus_suspended = 0;
 spin_unlock_irqrestore(&hsotg->lock, flags);
}
