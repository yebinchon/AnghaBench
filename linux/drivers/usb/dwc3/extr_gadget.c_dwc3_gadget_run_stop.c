
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {scalar_t__ revision; int pullups_connected; int regs; scalar_t__ has_hibernation; int dev; } ;


 int DWC3_DCTL ;
 int DWC3_DCTL_KEEP_CONNECT ;
 int DWC3_DCTL_RUN_STOP ;
 int DWC3_DCTL_TRGTULST_MASK ;
 int DWC3_DCTL_TRGTULST_RX_DET ;
 int DWC3_DSTS ;
 int DWC3_DSTS_DEVCTRLHLT ;
 scalar_t__ DWC3_REVISION_187A ;
 scalar_t__ DWC3_REVISION_194A ;
 int ETIMEDOUT ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 scalar_t__ pm_runtime_suspended (int ) ;

__attribute__((used)) static int dwc3_gadget_run_stop(struct dwc3 *dwc, int is_on, int suspend)
{
 u32 reg;
 u32 timeout = 500;

 if (pm_runtime_suspended(dwc->dev))
  return 0;

 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 if (is_on) {
  if (dwc->revision <= DWC3_REVISION_187A) {
   reg &= ~DWC3_DCTL_TRGTULST_MASK;
   reg |= DWC3_DCTL_TRGTULST_RX_DET;
  }

  if (dwc->revision >= DWC3_REVISION_194A)
   reg &= ~DWC3_DCTL_KEEP_CONNECT;
  reg |= DWC3_DCTL_RUN_STOP;

  if (dwc->has_hibernation)
   reg |= DWC3_DCTL_KEEP_CONNECT;

  dwc->pullups_connected = 1;
 } else {
  reg &= ~DWC3_DCTL_RUN_STOP;

  if (dwc->has_hibernation && !suspend)
   reg &= ~DWC3_DCTL_KEEP_CONNECT;

  dwc->pullups_connected = 0;
 }

 dwc3_writel(dwc->regs, DWC3_DCTL, reg);

 do {
  reg = dwc3_readl(dwc->regs, DWC3_DSTS);
  reg &= DWC3_DSTS_DEVCTRLHLT;
 } while (--timeout && !(!is_on ^ !reg));

 if (!timeout)
  return -ETIMEDOUT;

 return 0;
}
