
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dwc3_ep {int name; } ;
struct dwc3 {struct dwc3_ep** eps; int link_state; int ep0state; int dev; int regs; scalar_t__ imod_interval; } ;
struct TYPE_2__ {int wMaxPacketSize; } ;


 scalar_t__ DWC31_GRXTHRCFG_PKTCNTSEL ;
 int DWC3_DEPCFG_ACTION_INIT ;
 int DWC3_DEV_IMOD (int ) ;
 int DWC3_GEVNTCOUNT (int ) ;
 scalar_t__ DWC3_GEVNTCOUNT_EHB ;
 int DWC3_GRXTHRCFG ;
 scalar_t__ DWC3_GRXTHRCFG_PKTCNTSEL ;
 int DWC3_LINK_STATE_SS_DIS ;
 int EP0_SETUP_PHASE ;
 int __dwc3_gadget_ep_disable (struct dwc3_ep*) ;
 int __dwc3_gadget_ep_enable (struct dwc3_ep*,int ) ;
 int cpu_to_le16 (int) ;
 int dev_err (int ,char*,int ) ;
 int dwc3_ep0_out_start (struct dwc3*) ;
 int dwc3_gadget_enable_irq (struct dwc3*) ;
 TYPE_1__ dwc3_gadget_ep0_desc ;
 int dwc3_gadget_setup_nump (struct dwc3*) ;
 scalar_t__ dwc3_has_imod (struct dwc3*) ;
 scalar_t__ dwc3_is_usb31 (struct dwc3*) ;
 scalar_t__ dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,scalar_t__) ;

__attribute__((used)) static int __dwc3_gadget_start(struct dwc3 *dwc)
{
 struct dwc3_ep *dep;
 int ret = 0;
 u32 reg;





 if (dwc->imod_interval) {
  dwc3_writel(dwc->regs, DWC3_DEV_IMOD(0), dwc->imod_interval);
  dwc3_writel(dwc->regs, DWC3_GEVNTCOUNT(0), DWC3_GEVNTCOUNT_EHB);
 } else if (dwc3_has_imod(dwc)) {
  dwc3_writel(dwc->regs, DWC3_DEV_IMOD(0), 0);
 }
 reg = dwc3_readl(dwc->regs, DWC3_GRXTHRCFG);
 if (dwc3_is_usb31(dwc))
  reg &= ~DWC31_GRXTHRCFG_PKTCNTSEL;
 else
  reg &= ~DWC3_GRXTHRCFG_PKTCNTSEL;

 dwc3_writel(dwc->regs, DWC3_GRXTHRCFG, reg);

 dwc3_gadget_setup_nump(dwc);


 dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);

 dep = dwc->eps[0];
 ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
 if (ret) {
  dev_err(dwc->dev, "failed to enable %s\n", dep->name);
  goto err0;
 }

 dep = dwc->eps[1];
 ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_INIT);
 if (ret) {
  dev_err(dwc->dev, "failed to enable %s\n", dep->name);
  goto err1;
 }


 dwc->ep0state = EP0_SETUP_PHASE;
 dwc->link_state = DWC3_LINK_STATE_SS_DIS;
 dwc3_ep0_out_start(dwc);

 dwc3_gadget_enable_irq(dwc);

 return 0;

err1:
 __dwc3_gadget_ep_disable(dwc->eps[0]);

err0:
 return ret;
}
