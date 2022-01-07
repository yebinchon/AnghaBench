
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_GCTL ;
 int DWC3_GCTL_GBLHIBERNATIONEN ;
 int DWC3_OCFG ;
 int DWC3_OCFG_HNPCAP ;
 int DWC3_OCFG_SFTRSTMASK ;
 int DWC3_OCFG_SRPCAP ;
 int DWC3_OCTL ;
 int DWC3_OCTL_DEVSETHNPEN ;
 int DWC3_OCTL_HNPREQ ;
 int DWC3_OCTL_HSTSETHNPEN ;
 int DWC3_OCTL_PERIMODE ;
 int DWC3_OTG_ALL_EVENTS ;
 int dwc3_otg_clear_events (struct dwc3*) ;
 int dwc3_otg_disable_events (struct dwc3*,int ) ;
 int dwc3_otg_enable_events (struct dwc3*,int ) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_otgregs_init(struct dwc3 *dwc)
{
 u32 reg;







 reg = dwc3_readl(dwc->regs, DWC3_OCFG);
 reg |= DWC3_OCFG_SFTRSTMASK;
 dwc3_writel(dwc->regs, DWC3_OCFG, reg);


 reg = dwc3_readl(dwc->regs, DWC3_GCTL);
 reg &= ~DWC3_GCTL_GBLHIBERNATIONEN;
 dwc3_writel(dwc->regs, DWC3_GCTL, reg);






 reg = dwc3_readl(dwc->regs, DWC3_OCFG);
 reg &= ~(DWC3_OCFG_SRPCAP | DWC3_OCFG_HNPCAP);
 dwc3_writel(dwc->regs, DWC3_OCFG, reg);

 dwc3_otg_clear_events(dwc);

 dwc3_otg_disable_events(dwc, DWC3_OTG_ALL_EVENTS);

 dwc3_otg_enable_events(dwc, DWC3_OTG_ALL_EVENTS);




 reg = dwc3_readl(dwc->regs, DWC3_OCTL);
 reg |= DWC3_OCTL_PERIMODE;
 reg &= ~(DWC3_OCTL_DEVSETHNPEN | DWC3_OCTL_HSTSETHNPEN |
   DWC3_OCTL_HNPREQ);
 dwc3_writel(dwc->regs, DWC3_OCTL, reg);
}
