
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_GCTL_PRTCAP_OTG ;
 int DWC3_GUSB2PHYCFG (int ) ;
 int DWC3_GUSB2PHYCFG_SUSPHY ;
 int dwc3_otgregs_init (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_set_prtcap (struct dwc3*,int ) ;
 int dwc3_writel (int ,int ,int ) ;

void dwc3_otg_init(struct dwc3 *dwc)
{
 u32 reg;






 dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_OTG);

 reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
 reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
 dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);


 dwc3_otgregs_init(dwc);
}
