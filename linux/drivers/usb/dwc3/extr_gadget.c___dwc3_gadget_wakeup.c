
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dwc3 {scalar_t__ revision; int dev; int regs; } ;


 int DWC3_DCTL ;
 int DWC3_DCTL_ULSTCHNGREQ_MASK ;
 int DWC3_DSTS ;
 int DWC3_DSTS_CONNECTSPD ;
 int DWC3_DSTS_SUPERSPEED ;
 int DWC3_DSTS_SUPERSPEED_PLUS ;
 scalar_t__ DWC3_DSTS_USBLNKST (int) ;
 int DWC3_LINK_STATE_RECOV ;

 scalar_t__ DWC3_LINK_STATE_U0 ;

 scalar_t__ DWC3_REVISION_194A ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int dwc3_gadget_set_link_state (struct dwc3*,int ) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static int __dwc3_gadget_wakeup(struct dwc3 *dwc)
{
 int retries;

 int ret;
 u32 reg;

 u8 link_state;
 u8 speed;







 reg = dwc3_readl(dwc->regs, DWC3_DSTS);

 speed = reg & DWC3_DSTS_CONNECTSPD;
 if ((speed == DWC3_DSTS_SUPERSPEED) ||
     (speed == DWC3_DSTS_SUPERSPEED_PLUS))
  return 0;

 link_state = DWC3_DSTS_USBLNKST(reg);

 switch (link_state) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 ret = dwc3_gadget_set_link_state(dwc, DWC3_LINK_STATE_RECOV);
 if (ret < 0) {
  dev_err(dwc->dev, "failed to put link in Recovery\n");
  return ret;
 }


 if (dwc->revision < DWC3_REVISION_194A) {

  reg = dwc3_readl(dwc->regs, DWC3_DCTL);
  reg &= ~DWC3_DCTL_ULSTCHNGREQ_MASK;
  dwc3_writel(dwc->regs, DWC3_DCTL, reg);
 }


 retries = 20000;

 while (retries--) {
  reg = dwc3_readl(dwc->regs, DWC3_DSTS);


  if (DWC3_DSTS_USBLNKST(reg) == DWC3_LINK_STATE_U0)
   break;
 }

 if (DWC3_DSTS_USBLNKST(reg) != DWC3_LINK_STATE_U0) {
  dev_err(dwc->dev, "failed to send remote wakeup\n");
  return -EINVAL;
 }

 return 0;
}
