
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int actual; } ;
struct cdns3_trb {int length; int control; } ;
struct cdns3_request {struct cdns3_trb* trb; } ;
struct TYPE_2__ {int address; } ;
struct cdns3_endpoint {int dequeue; scalar_t__ type; int flags; struct cdns3_trb* trb_pool; TYPE_1__ endpoint; int pending_req_list; } ;
struct cdns3_device {int dev; } ;


 int EP_PENDING_REQUEST ;
 int EP_STALLED ;
 int EP_STALL_PENDING ;
 int TRBS_PER_SEGMENT ;
 scalar_t__ TRB_FIELD_TO_TYPE (int ) ;
 int TRB_LEN (int ) ;
 scalar_t__ TRB_LINK ;
 scalar_t__ USB_ENDPOINT_XFER_ISOC ;
 int cdns3_gadget_giveback (struct cdns3_endpoint*,struct cdns3_request*,int ) ;
 int cdns3_move_deq_to_next_trb (struct cdns3_request*) ;
 struct usb_request* cdns3_next_request (int *) ;
 int cdns3_request_handled (struct cdns3_endpoint*,struct cdns3_request*) ;
 int cdns3_select_ep (struct cdns3_device*,int ) ;
 int cdns3_start_all_request (struct cdns3_device*,struct cdns3_endpoint*) ;
 int dev_warn (int ,char*,struct cdns3_trb*,struct cdns3_trb*) ;
 int le32_to_cpu (int ) ;
 int list_empty (int *) ;
 struct cdns3_request* to_cdns3_request (struct usb_request*) ;
 int trace_cdns3_complete_trb (struct cdns3_endpoint*,struct cdns3_trb*) ;

__attribute__((used)) static void cdns3_transfer_completed(struct cdns3_device *priv_dev,
         struct cdns3_endpoint *priv_ep)
{
 struct cdns3_request *priv_req;
 struct usb_request *request;
 struct cdns3_trb *trb;

 while (!list_empty(&priv_ep->pending_req_list)) {
  request = cdns3_next_request(&priv_ep->pending_req_list);
  priv_req = to_cdns3_request(request);

  trb = priv_ep->trb_pool + priv_ep->dequeue;


  if (TRB_FIELD_TO_TYPE(trb->control) == TRB_LINK) {
   trace_cdns3_complete_trb(priv_ep, trb);
   cdns3_move_deq_to_next_trb(priv_req);
  }




  cdns3_select_ep(priv_dev, priv_ep->endpoint.address);

  if (!cdns3_request_handled(priv_ep, priv_req))
   goto prepare_next_td;

  trb = priv_ep->trb_pool + priv_ep->dequeue;
  trace_cdns3_complete_trb(priv_ep, trb);

  if (trb != priv_req->trb)
   dev_warn(priv_dev->dev,
     "request_trb=0x%p, queue_trb=0x%p\n",
     priv_req->trb, trb);

  request->actual = TRB_LEN(le32_to_cpu(trb->length));
  cdns3_move_deq_to_next_trb(priv_req);
  cdns3_gadget_giveback(priv_ep, priv_req, 0);

  if (priv_ep->type != USB_ENDPOINT_XFER_ISOC &&
      TRBS_PER_SEGMENT == 2)
   break;
 }
 priv_ep->flags &= ~EP_PENDING_REQUEST;

prepare_next_td:
 if (!(priv_ep->flags & EP_STALLED) &&
     !(priv_ep->flags & EP_STALL_PENDING))
  cdns3_start_all_request(priv_dev, priv_ep);
}
