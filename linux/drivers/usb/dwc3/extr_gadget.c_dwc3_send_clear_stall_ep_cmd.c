
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dwc3_gadget_ep_cmd_params {int dummy; } ;
struct dwc3_ep {scalar_t__ direction; struct dwc3* dwc; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct dwc3 {scalar_t__ revision; TYPE_1__ gadget; } ;
typedef int params ;


 int DWC3_DEPCMD_CLEARPENDIN ;
 int DWC3_DEPCMD_CLEARSTALL ;
 scalar_t__ DWC3_REVISION_260A ;
 scalar_t__ USB_SPEED_SUPER ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int ,struct dwc3_gadget_ep_cmd_params*) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int ,int) ;

__attribute__((used)) static int dwc3_send_clear_stall_ep_cmd(struct dwc3_ep *dep)
{
 struct dwc3 *dwc = dep->dwc;
 struct dwc3_gadget_ep_cmd_params params;
 u32 cmd = DWC3_DEPCMD_CLEARSTALL;
 if (dep->direction && (dwc->revision >= DWC3_REVISION_260A) &&
     (dwc->gadget.speed >= USB_SPEED_SUPER))
  cmd |= DWC3_DEPCMD_CLEARPENDIN;

 memset(&params, 0, sizeof(params));

 return dwc3_send_gadget_ep_cmd(dep, cmd, &params);
}
