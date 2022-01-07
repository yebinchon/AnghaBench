
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int wValue; } ;
struct TYPE_2__ {int state; } ;
struct dwc3 {TYPE_1__ gadget; int regs; int dis_u2_entry_quirk; int dis_u1_entry_quirk; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int DWC3_DCTL ;
 int DWC3_DCTL_ACCEPTU1ENA ;
 int DWC3_DCTL_ACCEPTU2ENA ;
 int EINVAL ;
 int USB_GADGET_DELAYED_STATUS ;



 int dwc3_ep0_delegate_req (struct dwc3*,struct usb_ctrlrequest*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int usb_gadget_set_state (TYPE_1__*,int const) ;

__attribute__((used)) static int dwc3_ep0_set_config(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
 enum usb_device_state state = dwc->gadget.state;
 u32 cfg;
 int ret;
 u32 reg;

 cfg = le16_to_cpu(ctrl->wValue);

 switch (state) {
 case 128:
  return -EINVAL;

 case 130:
  ret = dwc3_ep0_delegate_req(dwc, ctrl);

  if (cfg && (!ret || (ret == USB_GADGET_DELAYED_STATUS))) {







   if (ret == 0)
    usb_gadget_set_state(&dwc->gadget,
      129);





   reg = dwc3_readl(dwc->regs, DWC3_DCTL);
   if (!dwc->dis_u1_entry_quirk)
    reg |= DWC3_DCTL_ACCEPTU1ENA;
   if (!dwc->dis_u2_entry_quirk)
    reg |= DWC3_DCTL_ACCEPTU2ENA;
   dwc3_writel(dwc->regs, DWC3_DCTL, reg);
  }
  break;

 case 129:
  ret = dwc3_ep0_delegate_req(dwc, ctrl);
  if (!cfg && !ret)
   usb_gadget_set_state(&dwc->gadget,
     130);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
