
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {scalar_t__ speed; int regs; scalar_t__ dis_u1_entry_quirk; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int DWC3_DCTL ;
 int DWC3_DCTL_INITU1ENA ;
 scalar_t__ DWC3_DSTS_SUPERSPEED ;
 scalar_t__ DWC3_DSTS_SUPERSPEED_PLUS ;
 int EINVAL ;
 int USB_STATE_CONFIGURED ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int ) ;

__attribute__((used)) static int dwc3_ep0_handle_u1(struct dwc3 *dwc, enum usb_device_state state,
  int set)
{
 u32 reg;

 if (state != USB_STATE_CONFIGURED)
  return -EINVAL;
 if ((dwc->speed != DWC3_DSTS_SUPERSPEED) &&
   (dwc->speed != DWC3_DSTS_SUPERSPEED_PLUS))
  return -EINVAL;
 if (set && dwc->dis_u1_entry_quirk)
  return -EINVAL;

 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 if (set)
  reg |= DWC3_DCTL_INITU1ENA;
 else
  reg &= ~DWC3_DCTL_INITU1ENA;
 dwc3_writel(dwc->regs, DWC3_DCTL, reg);

 return 0;
}
