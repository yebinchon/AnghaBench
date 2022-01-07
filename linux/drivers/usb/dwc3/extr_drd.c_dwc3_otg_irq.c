
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {scalar_t__ current_otg_role; int otg_restart_host; int regs; } ;
typedef int irqreturn_t ;


 int DWC3_OEVT ;
 int DWC3_OEVT_DEVICEMODE ;
 int DWC3_OTG_ALL_EVENTS ;
 scalar_t__ DWC3_OTG_ROLE_HOST ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static irqreturn_t dwc3_otg_irq(int irq, void *_dwc)
{
 u32 reg;
 struct dwc3 *dwc = _dwc;
 irqreturn_t ret = IRQ_NONE;

 reg = dwc3_readl(dwc->regs, DWC3_OEVT);
 if (reg) {

  if (!(reg & DWC3_OTG_ALL_EVENTS)) {
   dwc3_writel(dwc->regs, DWC3_OEVT, reg);
   return IRQ_NONE;
  }

  if (dwc->current_otg_role == DWC3_OTG_ROLE_HOST &&
      !(reg & DWC3_OEVT_DEVICEMODE))
   dwc->otg_restart_host = 1;
  dwc3_writel(dwc->regs, DWC3_OEVT, reg);
  ret = IRQ_WAKE_THREAD;
 }

 return ret;
}
