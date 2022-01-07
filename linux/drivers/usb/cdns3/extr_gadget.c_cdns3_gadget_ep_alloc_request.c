
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct cdns3_request {struct usb_request request; struct cdns3_endpoint* priv_ep; } ;
struct cdns3_endpoint {int dummy; } ;
typedef int gfp_t ;


 struct cdns3_endpoint* ep_to_cdns3_ep (struct usb_ep*) ;
 struct cdns3_request* kzalloc (int,int ) ;
 int trace_cdns3_alloc_request (struct cdns3_request*) ;

struct usb_request *cdns3_gadget_ep_alloc_request(struct usb_ep *ep,
        gfp_t gfp_flags)
{
 struct cdns3_endpoint *priv_ep = ep_to_cdns3_ep(ep);
 struct cdns3_request *priv_req;

 priv_req = kzalloc(sizeof(*priv_req), gfp_flags);
 if (!priv_req)
  return ((void*)0);

 priv_req->priv_ep = priv_ep;

 trace_cdns3_alloc_request(priv_req);
 return &priv_req->request;
}
