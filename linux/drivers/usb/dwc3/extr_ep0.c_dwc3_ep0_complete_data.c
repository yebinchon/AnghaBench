
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct usb_request {scalar_t__ length; scalar_t__ actual; scalar_t__ zero; } ;
struct dwc3_trb {scalar_t__ size; int ctrl; } ;
struct dwc3_request {scalar_t__ direction; struct usb_request request; } ;
struct dwc3_event_depevt {int endpoint_number; } ;
struct TYPE_2__ {int maxpacket; } ;
struct dwc3_ep {scalar_t__ trb_enqueue; TYPE_1__ endpoint; int pending_list; } ;
struct dwc3 {int setup_packet_pending; int ep0_bounced; struct dwc3_ep** eps; struct dwc3_trb* ep0_trb; int ep0_next_event; } ;


 int DWC3_EP0_NRDY_STATUS ;
 scalar_t__ DWC3_TRBSTS_SETUP_PENDING ;
 int DWC3_TRB_CTRL_HWO ;
 scalar_t__ DWC3_TRB_SIZE_MASK ;
 scalar_t__ DWC3_TRB_SIZE_TRBSTS (scalar_t__) ;
 int ECONNRESET ;
 scalar_t__ IS_ALIGNED (scalar_t__,int ) ;
 int dwc3_ep0_stall_and_restart (struct dwc3*) ;
 int dwc3_gadget_giveback (struct dwc3_ep*,struct dwc3_request*,int ) ;
 struct dwc3_request* next_request (int *) ;
 int trace_dwc3_complete_trb (struct dwc3_ep*,struct dwc3_trb*) ;

__attribute__((used)) static void dwc3_ep0_complete_data(struct dwc3 *dwc,
  const struct dwc3_event_depevt *event)
{
 struct dwc3_request *r;
 struct usb_request *ur;
 struct dwc3_trb *trb;
 struct dwc3_ep *ep0;
 u32 transferred = 0;
 u32 status;
 u32 length;
 u8 epnum;

 epnum = event->endpoint_number;
 ep0 = dwc->eps[0];

 dwc->ep0_next_event = DWC3_EP0_NRDY_STATUS;
 trb = dwc->ep0_trb;
 trace_dwc3_complete_trb(ep0, trb);

 r = next_request(&ep0->pending_list);
 if (!r)
  return;

 status = DWC3_TRB_SIZE_TRBSTS(trb->size);
 if (status == DWC3_TRBSTS_SETUP_PENDING) {
  dwc->setup_packet_pending = 1;
  if (r)
   dwc3_gadget_giveback(ep0, r, -ECONNRESET);

  return;
 }

 ur = &r->request;

 length = trb->size & DWC3_TRB_SIZE_MASK;
 transferred = ur->length - length;
 ur->actual += transferred;

 if ((IS_ALIGNED(ur->length, ep0->endpoint.maxpacket) &&
      ur->length && ur->zero) || dwc->ep0_bounced) {
  trb++;
  trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
  trace_dwc3_complete_trb(ep0, trb);

  if (r->direction)
   dwc->eps[1]->trb_enqueue = 0;
  else
   dwc->eps[0]->trb_enqueue = 0;

  dwc->ep0_bounced = 0;
 }

 if ((epnum & 1) && ur->actual < ur->length)
  dwc3_ep0_stall_and_restart(dwc);
 else
  dwc3_gadget_giveback(ep0, r, 0);
}
