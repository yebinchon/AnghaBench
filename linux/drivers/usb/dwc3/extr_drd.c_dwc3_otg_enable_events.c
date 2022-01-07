
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_OEVTEN ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int ) ;

__attribute__((used)) static void dwc3_otg_enable_events(struct dwc3 *dwc, u32 enable_mask)
{
 u32 reg = dwc3_readl(dwc->regs, DWC3_OEVTEN);

 reg |= (enable_mask);
 dwc3_writel(dwc->regs, DWC3_OEVTEN, reg);
}
