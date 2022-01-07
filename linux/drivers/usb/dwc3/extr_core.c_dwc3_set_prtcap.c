
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int current_dr_role; int regs; } ;


 int DWC3_GCTL ;
 int DWC3_GCTL_PRTCAPDIR (int ) ;
 int DWC3_GCTL_PRTCAP_OTG ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int ) ;

void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode)
{
 u32 reg;

 reg = dwc3_readl(dwc->regs, DWC3_GCTL);
 reg &= ~(DWC3_GCTL_PRTCAPDIR(DWC3_GCTL_PRTCAP_OTG));
 reg |= DWC3_GCTL_PRTCAPDIR(mode);
 dwc3_writel(dwc->regs, DWC3_GCTL, reg);

 dwc->current_dr_role = mode;
}
