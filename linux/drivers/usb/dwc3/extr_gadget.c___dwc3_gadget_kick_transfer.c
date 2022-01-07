
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dwc3_trb {int dummy; } ;
struct TYPE_3__ {int stream_id; } ;
struct dwc3_request {struct dwc3_gadget_ep_cmd_params* trb; TYPE_1__ request; int trb_dma; } ;
struct dwc3_gadget_ep_cmd_params {int param1; int param0; } ;
struct TYPE_4__ {int desc; } ;
struct dwc3_ep {int flags; int resource_index; int frame_number; TYPE_2__ endpoint; scalar_t__ stream_capable; int started_list; } ;
typedef int params ;


 int DWC3_DEPCMD_PARAM (int ) ;
 int DWC3_DEPCMD_STARTTRANSFER ;
 int DWC3_DEPCMD_UPDATETRANSFER ;
 int DWC3_EP_PENDING_REQUEST ;
 int DWC3_EP_TRANSFER_STARTED ;
 int dwc3_calc_trbs_left (struct dwc3_ep*) ;
 int dwc3_gadget_del_and_unmap_request (struct dwc3_ep*,struct dwc3_request*,int) ;
 int dwc3_prepare_trbs (struct dwc3_ep*) ;
 int dwc3_send_gadget_ep_cmd (struct dwc3_ep*,int,struct dwc3_gadget_ep_cmd_params*) ;
 int lower_32_bits (int ) ;
 int memset (struct dwc3_gadget_ep_cmd_params*,int ,int) ;
 struct dwc3_request* next_request (int *) ;
 int upper_32_bits (int ) ;
 scalar_t__ usb_endpoint_xfer_isoc (int ) ;

__attribute__((used)) static int __dwc3_gadget_kick_transfer(struct dwc3_ep *dep)
{
 struct dwc3_gadget_ep_cmd_params params;
 struct dwc3_request *req;
 int starting;
 int ret;
 u32 cmd;

 if (!dwc3_calc_trbs_left(dep))
  return 0;

 starting = !(dep->flags & DWC3_EP_TRANSFER_STARTED);

 dwc3_prepare_trbs(dep);
 req = next_request(&dep->started_list);
 if (!req) {
  dep->flags |= DWC3_EP_PENDING_REQUEST;
  return 0;
 }

 memset(&params, 0, sizeof(params));

 if (starting) {
  params.param0 = upper_32_bits(req->trb_dma);
  params.param1 = lower_32_bits(req->trb_dma);
  cmd = DWC3_DEPCMD_STARTTRANSFER;

  if (dep->stream_capable)
   cmd |= DWC3_DEPCMD_PARAM(req->request.stream_id);

  if (usb_endpoint_xfer_isoc(dep->endpoint.desc))
   cmd |= DWC3_DEPCMD_PARAM(dep->frame_number);
 } else {
  cmd = DWC3_DEPCMD_UPDATETRANSFER |
   DWC3_DEPCMD_PARAM(dep->resource_index);
 }

 ret = dwc3_send_gadget_ep_cmd(dep, cmd, &params);
 if (ret < 0) {





  if (req->trb)
   memset(req->trb, 0, sizeof(struct dwc3_trb));
  dwc3_gadget_del_and_unmap_request(dep, req, ret);
  return ret;
 }

 return 0;
}
