
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {scalar_t__ revision; int regs; } ;
typedef enum dwc3_link_state { ____Placeholder_dwc3_link_state } dwc3_link_state ;


 int DWC3_DCTL ;
 int DWC3_DCTL_ULSTCHNGREQ (int) ;
 int DWC3_DCTL_ULSTCHNGREQ_MASK ;
 int DWC3_DSTS ;
 int DWC3_DSTS_DCNRD ;
 int DWC3_DSTS_USBLNKST (int) ;
 scalar_t__ DWC3_REVISION_194A ;
 int ETIMEDOUT ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int udelay (int) ;

int dwc3_gadget_set_link_state(struct dwc3 *dwc, enum dwc3_link_state state)
{
 int retries = 10000;
 u32 reg;





 if (dwc->revision >= DWC3_REVISION_194A) {
  while (--retries) {
   reg = dwc3_readl(dwc->regs, DWC3_DSTS);
   if (reg & DWC3_DSTS_DCNRD)
    udelay(5);
   else
    break;
  }

  if (retries <= 0)
   return -ETIMEDOUT;
 }

 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;


 reg |= DWC3_DCTL_ULSTCHNGREQ(state);
 dwc3_writel(dwc->regs, DWC3_DCTL, reg);





 if (dwc->revision >= DWC3_REVISION_194A)
  return 0;


 retries = 10000;
 while (--retries) {
  reg = dwc3_readl(dwc->regs, DWC3_DSTS);

  if (DWC3_DSTS_USBLNKST(reg) == state)
   return 0;

  udelay(5);
 }

 return -ETIMEDOUT;
}
