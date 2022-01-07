
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_gadget_ep_cmd_params {int param0; } ;
struct dwc3_ep {int dummy; } ;
typedef int params ;


 int DWC3_DEPCMD_SETTRANSFRESOURCE ;
 int DWC3_DEPXFERCFG_NUM_XFER_RES (int) ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int ,struct dwc3_gadget_ep_cmd_params*) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int,int) ;

__attribute__((used)) static int dwc3_gadget_set_xfer_resource(struct dwc3_ep *dep)
{
 struct dwc3_gadget_ep_cmd_params params;

 memset(&params, 0x00, sizeof(params));

 params.param0 = DWC3_DEPXFERCFG_NUM_XFER_RES(1);

 return dwc3_send_gadget_ep_cmd(dep, DWC3_DEPCMD_SETTRANSFRESOURCE,
   &params);
}
