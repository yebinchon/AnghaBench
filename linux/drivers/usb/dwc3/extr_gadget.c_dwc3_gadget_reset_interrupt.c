
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int connected; scalar_t__ revision; int test_mode; int regs; scalar_t__ setup_packet_pending; } ;


 int DWC3_DCFG ;
 int DWC3_DCFG_DEVADDR_MASK ;
 int DWC3_DCTL ;
 int DWC3_DCTL_TSTCTRL_MASK ;
 scalar_t__ DWC3_REVISION_188A ;
 int dwc3_clear_stall_all_ep (struct dwc3*) ;
 int dwc3_gadget_disconnect_interrupt (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_reset_gadget (struct dwc3*) ;
 int dwc3_writel (int ,int ,int ) ;

__attribute__((used)) static void dwc3_gadget_reset_interrupt(struct dwc3 *dwc)
{
 u32 reg;

 dwc->connected = 1;
 if (dwc->revision < DWC3_REVISION_188A) {
  if (dwc->setup_packet_pending)
   dwc3_gadget_disconnect_interrupt(dwc);
 }

 dwc3_reset_gadget(dwc);

 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 reg &= ~DWC3_DCTL_TSTCTRL_MASK;
 dwc3_writel(dwc->regs, DWC3_DCTL, reg);
 dwc->test_mode = 0;
 dwc3_clear_stall_all_ep(dwc);


 reg = dwc3_readl(dwc->regs, DWC3_DCFG);
 reg &= ~(DWC3_DCFG_DEVADDR_MASK);
 dwc3_writel(dwc->regs, DWC3_DCFG, reg);
}
