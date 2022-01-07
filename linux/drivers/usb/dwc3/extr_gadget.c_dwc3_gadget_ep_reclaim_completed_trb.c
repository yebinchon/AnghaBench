
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dwc3_trb {int ctrl; unsigned int size; } ;
struct TYPE_4__ {unsigned int frame_number; } ;
struct dwc3_request {unsigned int remaining; scalar_t__ needs_extra_trb; TYPE_2__ request; int num_trbs; } ;
struct dwc3_event_depevt {int status; } ;
struct TYPE_3__ {int desc; } ;
struct dwc3_ep {int interval; TYPE_1__ endpoint; } ;


 int DEPEVT_STATUS_IOC ;
 int DEPEVT_STATUS_SHORT ;
 int DWC3_TRBCTL_ISOCHRONOUS_FIRST ;
 int DWC3_TRB_CTRL_CHN ;
 unsigned int DWC3_TRB_CTRL_GET_SID_SOFN (int) ;
 int DWC3_TRB_CTRL_HWO ;
 unsigned int DWC3_TRB_SIZE_MASK ;
 int ESHUTDOWN ;
 int dwc3_ep_inc_deq (struct dwc3_ep*) ;
 int trace_dwc3_complete_trb (struct dwc3_ep*,struct dwc3_trb*) ;
 scalar_t__ usb_endpoint_xfer_isoc (int ) ;

__attribute__((used)) static int dwc3_gadget_ep_reclaim_completed_trb(struct dwc3_ep *dep,
  struct dwc3_request *req, struct dwc3_trb *trb,
  const struct dwc3_event_depevt *event, int status, int chain)
{
 unsigned int count;

 dwc3_ep_inc_deq(dep);

 trace_dwc3_complete_trb(dep, trb);
 req->num_trbs--;
 if (chain && (trb->ctrl & DWC3_TRB_CTRL_HWO))
  trb->ctrl &= ~DWC3_TRB_CTRL_HWO;





 if (usb_endpoint_xfer_isoc(dep->endpoint.desc) &&
     (trb->ctrl & DWC3_TRBCTL_ISOCHRONOUS_FIRST)) {
  unsigned int frame_number;

  frame_number = DWC3_TRB_CTRL_GET_SID_SOFN(trb->ctrl);
  frame_number &= ~(dep->interval - 1);
  req->request.frame_number = frame_number;
 }







 if (req->needs_extra_trb && !(trb->ctrl & DWC3_TRB_CTRL_CHN)) {
  trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
  return 1;
 }

 count = trb->size & DWC3_TRB_SIZE_MASK;
 req->remaining += count;

 if ((trb->ctrl & DWC3_TRB_CTRL_HWO) && status != -ESHUTDOWN)
  return 1;

 if (event->status & DEPEVT_STATUS_SHORT && !chain)
  return 1;

 if (event->status & DEPEVT_STATUS_IOC)
  return 1;

 return 0;
}
