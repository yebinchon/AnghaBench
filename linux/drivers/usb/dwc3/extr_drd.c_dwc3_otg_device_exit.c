
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_OCTL ;
 int DWC3_OCTL_DEVSETHNPEN ;
 int DWC3_OCTL_HNPREQ ;
 int DWC3_OCTL_PERIMODE ;
 int DWC3_OEVTEN_BDEVBHOSTENDEN ;
 int DWC3_OEVTEN_BDEVHNPCHNGEN ;
 int DWC3_OEVTEN_BDEVVBUSCHNGEN ;
 int dwc3_otg_disable_events (struct dwc3*,int) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_otg_device_exit(struct dwc3 *dwc)
{
 u32 reg;
 dwc3_otg_disable_events(dwc, DWC3_OEVTEN_BDEVHNPCHNGEN |
    DWC3_OEVTEN_BDEVVBUSCHNGEN |
    DWC3_OEVTEN_BDEVBHOSTENDEN);


 reg = dwc3_readl(dwc->regs, DWC3_OCTL);
 reg &= ~(DWC3_OCTL_DEVSETHNPEN | DWC3_OCTL_HNPREQ);
 reg |= DWC3_OCTL_PERIMODE;
 dwc3_writel(dwc->regs, DWC3_OCTL, reg);
}
