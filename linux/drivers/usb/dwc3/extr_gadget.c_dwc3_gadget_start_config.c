
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_gadget_ep_cmd_params {int dummy; } ;
struct dwc3_ep {struct dwc3* dwc; scalar_t__ number; } ;
struct dwc3 {struct dwc3_ep** eps; } ;
typedef int params ;


 int DWC3_DEPCMD_DEPSTARTCFG ;
 int DWC3_ENDPOINTS_NUM ;
 int dwc3_gadget_set_xfer_resource (struct dwc3_ep*) ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int ,struct dwc3_gadget_ep_cmd_params*) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int,int) ;

__attribute__((used)) static int dwc3_gadget_start_config(struct dwc3_ep *dep)
{
 struct dwc3_gadget_ep_cmd_params params;
 struct dwc3 *dwc;
 u32 cmd;
 int i;
 int ret;

 if (dep->number)
  return 0;

 memset(&params, 0x00, sizeof(params));
 cmd = DWC3_DEPCMD_DEPSTARTCFG;
 dwc = dep->dwc;

 ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
 if (ret)
  return ret;

 for (i = 0; i < DWC3_ENDPOINTS_NUM; i++) {
  struct dwc3_ep *dep = dwc->eps[i];

  if (!dep)
   continue;

  ret = dwc3_gadget_set_xfer_resource(dep);
  if (ret)
   return ret;
 }

 return 0;
}
