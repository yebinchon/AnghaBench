
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_endpoint_descriptor {int dummy; } ;
struct dwc3_gadget_ep_cmd_params {int param0; int param1; int param2; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor* desc; } ;
struct dwc3_ep {int flags; int regs; struct dwc3* dwc; TYPE_1__ endpoint; } ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct dwc3 {scalar_t__ link_state; int regs; int dev; TYPE_2__ gadget; } ;




 int DWC3_DEPCMD ;
 int DWC3_DEPCMDPAR0 ;
 int DWC3_DEPCMDPAR1 ;
 int DWC3_DEPCMDPAR2 ;
 scalar_t__ DWC3_DEPCMD_CMD (unsigned int) ;
 unsigned int DWC3_DEPCMD_CMDACT ;
 unsigned int DWC3_DEPCMD_CMDIOC ;
 scalar_t__ DWC3_DEPCMD_STARTTRANSFER ;
 int DWC3_DEPCMD_STATUS (int) ;
 scalar_t__ DWC3_DEPCMD_UPDATETRANSFER ;
 int DWC3_EP_TRANSFER_STARTED ;
 int DWC3_GUSB2PHYCFG (int ) ;
 int DWC3_GUSB2PHYCFG_ENBLSLPM ;
 int DWC3_GUSB2PHYCFG_SUSPHY ;
 scalar_t__ DWC3_LINK_STATE_U1 ;
 scalar_t__ DWC3_LINK_STATE_U2 ;
 scalar_t__ DWC3_LINK_STATE_U3 ;
 int EAGAIN ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ USB_SPEED_HIGH ;
 int __dwc3_gadget_wakeup (struct dwc3*) ;
 int dev_WARN (int ,char*) ;
 int dev_WARN_ONCE (int ,int,char*,int) ;
 int dwc3_gadget_ep_get_transfer_index (struct dwc3_ep*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int trace_dwc3_gadget_ep_cmd (struct dwc3_ep*,unsigned int,struct dwc3_gadget_ep_cmd_params*,int) ;
 scalar_t__ unlikely (int) ;
 int usb_endpoint_xfer_isoc (struct usb_endpoint_descriptor const*) ;

int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
  struct dwc3_gadget_ep_cmd_params *params)
{
 const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
 struct dwc3 *dwc = dep->dwc;
 u32 timeout = 1000;
 u32 saved_config = 0;
 u32 reg;

 int cmd_status = 0;
 int ret = -EINVAL;
 if (dwc->gadget.speed <= USB_SPEED_HIGH) {
  reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
  if (unlikely(reg & DWC3_GUSB2PHYCFG_SUSPHY)) {
   saved_config |= DWC3_GUSB2PHYCFG_SUSPHY;
   reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
  }

  if (reg & DWC3_GUSB2PHYCFG_ENBLSLPM) {
   saved_config |= DWC3_GUSB2PHYCFG_ENBLSLPM;
   reg &= ~DWC3_GUSB2PHYCFG_ENBLSLPM;
  }

  if (saved_config)
   dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 }

 if (DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_STARTTRANSFER) {
  int needs_wakeup;

  needs_wakeup = (dwc->link_state == DWC3_LINK_STATE_U1 ||
    dwc->link_state == DWC3_LINK_STATE_U2 ||
    dwc->link_state == DWC3_LINK_STATE_U3);

  if (unlikely(needs_wakeup)) {
   ret = __dwc3_gadget_wakeup(dwc);
   dev_WARN_ONCE(dwc->dev, ret, "wakeup failed --> %d\n",
     ret);
  }
 }

 dwc3_writel(dep->regs, DWC3_DEPCMDPAR0, params->param0);
 dwc3_writel(dep->regs, DWC3_DEPCMDPAR1, params->param1);
 dwc3_writel(dep->regs, DWC3_DEPCMDPAR2, params->param2);
 if (DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_UPDATETRANSFER &&
   !usb_endpoint_xfer_isoc(desc))
  cmd &= ~(DWC3_DEPCMD_CMDIOC | DWC3_DEPCMD_CMDACT);
 else
  cmd |= DWC3_DEPCMD_CMDACT;

 dwc3_writel(dep->regs, DWC3_DEPCMD, cmd);
 do {
  reg = dwc3_readl(dep->regs, DWC3_DEPCMD);
  if (!(reg & DWC3_DEPCMD_CMDACT)) {
   cmd_status = DWC3_DEPCMD_STATUS(reg);

   switch (cmd_status) {
   case 0:
    ret = 0;
    break;
   case 128:
    ret = -EINVAL;
    break;
   case 129:
    ret = -EAGAIN;
    break;
   default:
    dev_WARN(dwc->dev, "UNKNOWN cmd status\n");
   }

   break;
  }
 } while (--timeout);

 if (timeout == 0) {
  ret = -ETIMEDOUT;
  cmd_status = -ETIMEDOUT;
 }

 trace_dwc3_gadget_ep_cmd(dep, cmd, params, cmd_status);

 if (ret == 0 && DWC3_DEPCMD_CMD(cmd) == DWC3_DEPCMD_STARTTRANSFER) {
  dep->flags |= DWC3_EP_TRANSFER_STARTED;
  dwc3_gadget_ep_get_transfer_index(dep);
 }

 if (saved_config) {
  reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
  reg |= saved_config;
  dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 }

 return ret;
}
