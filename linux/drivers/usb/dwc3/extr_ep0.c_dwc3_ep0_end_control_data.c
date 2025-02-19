
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_gadget_ep_cmd_params {int dummy; } ;
struct dwc3_ep {scalar_t__ resource_index; } ;
struct dwc3 {int dummy; } ;
typedef int params ;


 int DWC3_DEPCMD_CMDIOC ;
 int DWC3_DEPCMD_ENDTRANSFER ;
 int DWC3_DEPCMD_PARAM (scalar_t__) ;
 int WARN_ON_ONCE (int) ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int ,struct dwc3_gadget_ep_cmd_params*) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int ,int) ;

__attribute__((used)) static void dwc3_ep0_end_control_data(struct dwc3 *dwc, struct dwc3_ep *dep)
{
 struct dwc3_gadget_ep_cmd_params params;
 u32 cmd;
 int ret;

 if (!dep->resource_index)
  return;

 cmd = DWC3_DEPCMD_ENDTRANSFER;
 cmd |= DWC3_DEPCMD_CMDIOC;
 cmd |= DWC3_DEPCMD_PARAM(dep->resource_index);
 memset(&params, 0, sizeof(params));
 ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
 WARN_ON_ONCE(ret);
 dep->resource_index = 0;
}
