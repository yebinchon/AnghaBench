
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; int dis_u2_susphy_quirk; } ;


 int DWC3_GUSB2PHYCFG (int ) ;
 int DWC3_GUSB2PHYCFG_SUSPHY ;
 int DWC3_OCFG ;
 int DWC3_OCFG_DISPWRCUTTOFF ;
 int DWC3_OCTL ;
 int DWC3_OCTL_DEVSETHNPEN ;
 int DWC3_OCTL_HSTSETHNPEN ;
 int DWC3_OCTL_PERIMODE ;
 int DWC3_OCTL_PRTPWRCTL ;
 int DWC3_OCTL_TERMSELIDPULSE ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

void dwc3_otg_host_init(struct dwc3 *dwc)
{
 u32 reg;
 reg = dwc3_readl(dwc->regs, DWC3_OCTL);
 reg &= ~(DWC3_OCTL_PERIMODE | DWC3_OCTL_TERMSELIDPULSE |
   DWC3_OCTL_DEVSETHNPEN | DWC3_OCTL_HSTSETHNPEN);
 dwc3_writel(dwc->regs, DWC3_OCTL, reg);




 reg = dwc3_readl(dwc->regs, DWC3_OCFG);
 reg &= ~DWC3_OCFG_DISPWRCUTTOFF;
 dwc3_writel(dwc->regs, DWC3_OCFG, reg);
 if (!dwc->dis_u2_susphy_quirk) {
  reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
  reg |= DWC3_GUSB2PHYCFG_SUSPHY;
  dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 }


 reg = dwc3_readl(dwc->regs, DWC3_OCTL);
 reg |= DWC3_OCTL_PRTPWRCTL;
 dwc3_writel(dwc->regs, DWC3_OCTL, reg);
}
