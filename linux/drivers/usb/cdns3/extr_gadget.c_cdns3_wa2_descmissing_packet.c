
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct TYPE_4__ {int length; int buf; } ;
struct cdns3_request {TYPE_2__ request; int flags; } ;
struct cdns3_endpoint {int flags; scalar_t__ wa2_counter; TYPE_1__* cdns3_dev; struct cdns3_request* descmis_req; int endpoint; } ;
struct TYPE_3__ {int dev; } ;


 int CDNS3_DESCMIS_BUF_SIZE ;
 scalar_t__ CDNS3_WA2_NUM_BUFFERS ;
 int EP_QUIRK_EXTRA_BUF_DET ;
 int EP_QUIRK_EXTRA_BUF_EN ;
 int GFP_ATOMIC ;
 int REQUEST_INTERNAL ;
 int REQUEST_INTERNAL_CH ;
 int __cdns3_gadget_ep_queue (int *,TYPE_2__*,int ) ;
 struct usb_request* cdns3_gadget_ep_alloc_request (int *,int ) ;
 int cdns3_gadget_ep_free_request (int *,struct usb_request*) ;
 int cdns3_wa2_remove_old_request (struct cdns3_endpoint*) ;
 int dev_err (int ,char*) ;
 int kzalloc (int ,int ) ;
 struct cdns3_request* to_cdns3_request (struct usb_request*) ;
 int trace_cdns3_wa2 (struct cdns3_endpoint*,char*) ;

__attribute__((used)) static void cdns3_wa2_descmissing_packet(struct cdns3_endpoint *priv_ep)
{
 struct cdns3_request *priv_req;
 struct usb_request *request;

 if (priv_ep->flags & EP_QUIRK_EXTRA_BUF_DET) {
  priv_ep->flags &= ~EP_QUIRK_EXTRA_BUF_DET;
  priv_ep->flags |= EP_QUIRK_EXTRA_BUF_EN;
 }

 trace_cdns3_wa2(priv_ep, "Description Missing detected\n");

 if (priv_ep->wa2_counter >= CDNS3_WA2_NUM_BUFFERS)
  cdns3_wa2_remove_old_request(priv_ep);

 request = cdns3_gadget_ep_alloc_request(&priv_ep->endpoint,
      GFP_ATOMIC);
 if (!request)
  goto err;

 priv_req = to_cdns3_request(request);
 priv_req->flags |= REQUEST_INTERNAL;







 if (priv_ep->descmis_req)
  priv_ep->descmis_req->flags |= REQUEST_INTERNAL_CH;

 priv_req->request.buf = kzalloc(CDNS3_DESCMIS_BUF_SIZE,
     GFP_ATOMIC);
 priv_ep->wa2_counter++;

 if (!priv_req->request.buf) {
  cdns3_gadget_ep_free_request(&priv_ep->endpoint, request);
  goto err;
 }

 priv_req->request.length = CDNS3_DESCMIS_BUF_SIZE;
 priv_ep->descmis_req = priv_req;

 __cdns3_gadget_ep_queue(&priv_ep->endpoint,
    &priv_ep->descmis_req->request,
    GFP_ATOMIC);

 return;

err:
 dev_err(priv_ep->cdns3_dev->dev,
  "Failed: No sufficient memory for DESCMIS\n");
}
