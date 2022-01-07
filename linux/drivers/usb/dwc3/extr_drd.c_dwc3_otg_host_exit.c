
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_OCTL ;
 int DWC3_OCTL_HSTSETHNPEN ;
 int DWC3_OCTL_PRTPWRCTL ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_otg_host_exit(struct dwc3 *dwc)
{
 u32 reg;
 reg = dwc3_readl(dwc->regs, DWC3_OCTL);
 reg &= ~(DWC3_OCTL_HSTSETHNPEN | DWC3_OCTL_PRTPWRCTL);
 dwc3_writel(dwc->regs, DWC3_OCTL, reg);
}
