
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_gadget_ep_cmd_params {int param1; int param0; } ;
struct dwc3_ep {int flags; struct dwc3* dwc; } ;
struct dwc3 {int ep0_next_event; int ep0_trb_addr; } ;
typedef int params ;


 int DWC3_DEPCMD_STARTTRANSFER ;
 int DWC3_EP0_COMPLETE ;
 int DWC3_EP_TRANSFER_STARTED ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int ,struct dwc3_gadget_ep_cmd_params*) ;
 int lower_32_bits (int ) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int ,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int dwc3_ep0_start_trans(struct dwc3_ep *dep)
{
 struct dwc3_gadget_ep_cmd_params params;
 struct dwc3 *dwc;
 int ret;

 if (dep->flags & DWC3_EP_TRANSFER_STARTED)
  return 0;

 dwc = dep->dwc;

 memset(&params, 0, sizeof(params));
 params.param0 = upper_32_bits(dwc->ep0_trb_addr);
 params.param1 = lower_32_bits(dwc->ep0_trb_addr);

 ret = dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_STARTTRANSFER, &params);
 if (ret < 0)
  return ret;

 dwc->ep0_next_event = DWC3_EP0_COMPLETE;

 return 0;
}
