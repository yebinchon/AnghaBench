
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_DSTS ;
 int DWC3_DSTS_USBLNKST (int ) ;
 int dwc3_readl (int ,int ) ;

int dwc3_gadget_get_link_state(struct dwc3 *dwc)
{
 u32 reg;

 reg = dwc3_readl(dwc->regs, DWC3_DSTS);

 return DWC3_DSTS_USBLNKST(reg);
}
