
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; } ;


 int DWC3_DCTL ;
 int DWC3_DCTL_TSTCTRL_MASK ;
 int EINVAL ;





 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

int dwc3_gadget_set_test_mode(struct dwc3 *dwc, int mode)
{
 u32 reg;

 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 reg &= ~DWC3_DCTL_TSTCTRL_MASK;

 switch (mode) {
 case 131:
 case 130:
 case 128:
 case 129:
 case 132:
  reg |= mode << 1;
  break;
 default:
  return -EINVAL;
 }

 dwc3_writel(dwc->regs, DWC3_DCTL, reg);

 return 0;
}
