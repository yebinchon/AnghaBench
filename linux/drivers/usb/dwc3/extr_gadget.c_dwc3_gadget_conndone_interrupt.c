
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int maxpacket; } ;
struct dwc3_ep {int name; TYPE_1__ endpoint; } ;
struct TYPE_7__ {TYPE_2__* ep0; int speed; } ;
struct dwc3 {int speed; scalar_t__ revision; int hird_threshold; int is_utmi_l1_suspend; int dev; struct dwc3_ep** eps; int regs; int lpm_nyet_threshold; scalar_t__ has_lpm_erratum; TYPE_3__ gadget; } ;
struct TYPE_8__ {void* wMaxPacketSize; } ;
struct TYPE_6__ {int maxpacket; } ;


 int DWC3_DCFG ;
 int DWC3_DCFG_LPM_CAP ;
 int DWC3_DCTL ;
 int DWC3_DCTL_HIRD_THRES (int) ;
 int DWC3_DCTL_HIRD_THRES_MASK ;
 int DWC3_DCTL_L1_HIBER_EN ;
 int DWC3_DCTL_NYET_THRES (int ) ;
 int DWC3_DEPCFG_ACTION_MODIFY ;
 int DWC3_DSTS ;
 int DWC3_DSTS_CONNECTSPD ;





 scalar_t__ DWC3_REVISION_190A ;
 scalar_t__ DWC3_REVISION_194A ;
 scalar_t__ DWC3_REVISION_240A ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_LOW ;
 int USB_SPEED_SUPER ;
 int USB_SPEED_SUPER_PLUS ;
 int WARN_ONCE (int,char*) ;
 int __dwc3_gadget_ep_enable (struct dwc3_ep*,int ) ;
 void* cpu_to_le16 (int) ;
 int dev_err (int ,char*,int ) ;
 TYPE_4__ dwc3_gadget_ep0_desc ;
 int dwc3_gadget_reset_interrupt (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_gadget_conndone_interrupt(struct dwc3 *dwc)
{
 struct dwc3_ep *dep;
 int ret;
 u32 reg;
 u8 speed;

 reg = dwc3_readl(dwc->regs, DWC3_DSTS);
 speed = reg & DWC3_DSTS_CONNECTSPD;
 dwc->speed = speed;
 switch (speed) {
 case 128:
  dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
  dwc->gadget.ep0->maxpacket = 512;
  dwc->gadget.speed = USB_SPEED_SUPER_PLUS;
  break;
 case 129:
  if (dwc->revision < DWC3_REVISION_190A)
   dwc3_gadget_reset_interrupt(dwc);

  dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(512);
  dwc->gadget.ep0->maxpacket = 512;
  dwc->gadget.speed = USB_SPEED_SUPER;
  break;
 case 131:
  dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(64);
  dwc->gadget.ep0->maxpacket = 64;
  dwc->gadget.speed = USB_SPEED_HIGH;
  break;
 case 132:
  dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(64);
  dwc->gadget.ep0->maxpacket = 64;
  dwc->gadget.speed = USB_SPEED_FULL;
  break;
 case 130:
  dwc3_gadget_ep0_desc.wMaxPacketSize = cpu_to_le16(8);
  dwc->gadget.ep0->maxpacket = 8;
  dwc->gadget.speed = USB_SPEED_LOW;
  break;
 }

 dwc->eps[1]->endpoint.maxpacket = dwc->gadget.ep0->maxpacket;



 if ((dwc->revision > DWC3_REVISION_194A) &&
     (speed != 129) &&
     (speed != 128)) {
  reg = dwc3_readl(dwc->regs, DWC3_DCFG);
  reg |= DWC3_DCFG_LPM_CAP;
  dwc3_writel(dwc->regs, DWC3_DCFG, reg);

  reg = dwc3_readl(dwc->regs, DWC3_DCTL);
  reg &= ~(DWC3_DCTL_HIRD_THRES_MASK | DWC3_DCTL_L1_HIBER_EN);

  reg |= DWC3_DCTL_HIRD_THRES(dwc->hird_threshold |
         (dwc->is_utmi_l1_suspend << 4));







  WARN_ONCE(dwc->revision < DWC3_REVISION_240A
    && dwc->has_lpm_erratum,
    "LPM Erratum not available on dwc3 revisions < 2.40a\n");

  if (dwc->has_lpm_erratum && dwc->revision >= DWC3_REVISION_240A)
   reg |= DWC3_DCTL_NYET_THRES(dwc->lpm_nyet_threshold);

  dwc3_writel(dwc->regs, DWC3_DCTL, reg);
 } else {
  reg = dwc3_readl(dwc->regs, DWC3_DCTL);
  reg &= ~DWC3_DCTL_HIRD_THRES_MASK;
  dwc3_writel(dwc->regs, DWC3_DCTL, reg);
 }

 dep = dwc->eps[0];
 ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_MODIFY);
 if (ret) {
  dev_err(dwc->dev, "failed to enable %s\n", dep->name);
  return;
 }

 dep = dwc->eps[1];
 ret = __dwc3_gadget_ep_enable(dep, DWC3_DEPCFG_ACTION_MODIFY);
 if (ret) {
  dev_err(dwc->dev, "failed to enable %s\n", dep->name);
  return;
 }
}
