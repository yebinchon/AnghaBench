
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ length; scalar_t__ actual; int list; int status; } ;
struct cdns3_request {int flags; struct usb_request request; } ;
struct cdns3_endpoint {int flags; int * descmis_req; int deferred_req_list; } ;
struct cdns3_device {int dummy; } ;


 int EINPROGRESS ;
 int EP_QUIRK_END_TRANSFER ;
 int EP_QUIRK_EXTRA_BUF_EN ;
 int REQUEST_INTERNAL ;
 struct usb_request* cdns3_next_request (int *) ;
 int cdns3_start_all_request (struct cdns3_device*,struct cdns3_endpoint*) ;
 int cdns3_wa2_descmiss_copy_data (struct cdns3_endpoint*,struct usb_request*) ;
 int list_del_init (int *) ;

struct usb_request *cdns3_wa2_gadget_giveback(struct cdns3_device *priv_dev,
           struct cdns3_endpoint *priv_ep,
           struct cdns3_request *priv_req)
{
 if (priv_ep->flags & EP_QUIRK_EXTRA_BUF_EN &&
     priv_req->flags & REQUEST_INTERNAL) {
  struct usb_request *req;

  req = cdns3_next_request(&priv_ep->deferred_req_list);

  priv_ep->descmis_req = ((void*)0);

  if (!req)
   return ((void*)0);

  cdns3_wa2_descmiss_copy_data(priv_ep, req);
  if (!(priv_ep->flags & EP_QUIRK_END_TRANSFER) &&
      req->length != req->actual) {

   return ((void*)0);
  }

  if (req->status == -EINPROGRESS)
   req->status = 0;

  list_del_init(&req->list);
  cdns3_start_all_request(priv_dev, priv_ep);
  return req;
 }

 return &priv_req->request;
}
