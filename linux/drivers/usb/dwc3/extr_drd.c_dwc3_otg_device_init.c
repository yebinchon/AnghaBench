
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; int dis_u2_susphy_quirk; } ;


 int DWC3_GUSB2PHYCFG (int ) ;
 int DWC3_GUSB2PHYCFG_SUSPHY ;
 int DWC3_OCFG ;
 int DWC3_OCFG_SFTRSTMASK ;
 int DWC3_OCTL ;
 int DWC3_OCTL_DEVSETHNPEN ;
 int DWC3_OCTL_HNPREQ ;
 int DWC3_OCTL_HSTSETHNPEN ;
 int DWC3_OCTL_PERIMODE ;
 int DWC3_OCTL_TERMSELIDPULSE ;
 int DWC3_OEVTEN_BDEVSESSVLDDETEN ;
 int dwc3_otg_enable_events (struct dwc3*,int ) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_otg_device_init(struct dwc3 *dwc)
{
 u32 reg;







 reg = dwc3_readl(dwc->regs, DWC3_OCFG);

 reg |= DWC3_OCFG_SFTRSTMASK;
 dwc3_writel(dwc->regs, DWC3_OCFG, reg);





 reg = dwc3_readl(dwc->regs, DWC3_OCTL);
 reg |= DWC3_OCTL_PERIMODE;
 reg &= ~(DWC3_OCTL_TERMSELIDPULSE | DWC3_OCTL_HNPREQ |
   DWC3_OCTL_DEVSETHNPEN | DWC3_OCTL_HSTSETHNPEN);
 dwc3_writel(dwc->regs, DWC3_OCTL, reg);

 dwc3_otg_enable_events(dwc, DWC3_OEVTEN_BDEVSESSVLDDETEN);

 if (!dwc->dis_u2_susphy_quirk) {
  reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
  reg |= DWC3_GUSB2PHYCFG_SUSPHY;
  dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 }

}
