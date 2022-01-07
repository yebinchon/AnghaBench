
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_gadget_ep_cmd_params {int dummy; } ;
struct dwc3_ep {int flags; scalar_t__ resource_index; struct dwc3* dwc; } ;
struct dwc3 {scalar_t__ revision; } ;
typedef int params ;


 int DWC3_DEPCMD_CMDIOC ;
 int DWC3_DEPCMD_ENDTRANSFER ;
 int DWC3_DEPCMD_HIPRI_FORCERM ;
 int DWC3_DEPCMD_PARAM (scalar_t__) ;
 int DWC3_EP_TRANSFER_STARTED ;
 scalar_t__ DWC3_REVISION_310A ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ dwc3_is_usb31 (struct dwc3*) ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int ,struct dwc3_gadget_ep_cmd_params*) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void dwc3_stop_active_transfer(struct dwc3_ep *dep, bool force,
 bool interrupt)
{
 struct dwc3 *dwc = dep->dwc;
 struct dwc3_gadget_ep_cmd_params params;
 u32 cmd;
 int ret;

 if (!(dep->flags & DWC3_EP_TRANSFER_STARTED))
  return;
 cmd = DWC3_DEPCMD_ENDTRANSFER;
 cmd |= force ? DWC3_DEPCMD_HIPRI_FORCERM : 0;
 cmd |= interrupt ? DWC3_DEPCMD_CMDIOC : 0;
 cmd |= DWC3_DEPCMD_PARAM(dep->resource_index);
 memset(&params, 0, sizeof(params));
 ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
 WARN_ON_ONCE(ret);
 dep->resource_index = 0;

 if (dwc3_is_usb31(dwc) || dwc->revision < DWC3_REVISION_310A)
  udelay(100);
}
