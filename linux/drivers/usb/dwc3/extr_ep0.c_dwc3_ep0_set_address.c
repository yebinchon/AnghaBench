
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int wValue; } ;
struct TYPE_2__ {int state; } ;
struct dwc3 {TYPE_1__ gadget; int regs; int dev; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int DWC3_DCFG ;
 int DWC3_DCFG_DEVADDR (int) ;
 int DWC3_DCFG_DEVADDR_MASK ;
 int EINVAL ;
 int USB_STATE_ADDRESS ;
 int USB_STATE_CONFIGURED ;
 int USB_STATE_DEFAULT ;
 int dev_err (int ,char*,...) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int le16_to_cpu (int ) ;
 int usb_gadget_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static int dwc3_ep0_set_address(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
 enum usb_device_state state = dwc->gadget.state;
 u32 addr;
 u32 reg;

 addr = le16_to_cpu(ctrl->wValue);
 if (addr > 127) {
  dev_err(dwc->dev, "invalid device address %d\n", addr);
  return -EINVAL;
 }

 if (state == USB_STATE_CONFIGURED) {
  dev_err(dwc->dev, "can't SetAddress() from Configured State\n");
  return -EINVAL;
 }

 reg = dwc3_readl(dwc->regs, DWC3_DCFG);
 reg &= ~(DWC3_DCFG_DEVADDR_MASK);
 reg |= DWC3_DCFG_DEVADDR(addr);
 dwc3_writel(dwc->regs, DWC3_DCFG, reg);

 if (addr)
  usb_gadget_set_state(&dwc->gadget, USB_STATE_ADDRESS);
 else
  usb_gadget_set_state(&dwc->gadget, USB_STATE_DEFAULT);

 return 0;
}
