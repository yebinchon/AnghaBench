
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int dummy; } ;


 int DAINTMSK ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void dwc2_hsotg_ctrl_epint(struct dwc2_hsotg *hsotg,
      unsigned int ep, unsigned int dir_in,
     unsigned int en)
{
 unsigned long flags;
 u32 bit = 1 << ep;
 u32 daint;

 if (!dir_in)
  bit <<= 16;

 local_irq_save(flags);
 daint = dwc2_readl(hsotg, DAINTMSK);
 if (en)
  daint |= bit;
 else
  daint &= ~bit;
 dwc2_writel(hsotg, daint, DAINTMSK);
 local_irq_restore(flags);
}
