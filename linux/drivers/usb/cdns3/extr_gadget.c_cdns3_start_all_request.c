
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int list; } ;
struct cdns3_endpoint {int flags; int pending_req_list; int deferred_req_list; } ;
struct cdns3_device {int dummy; } ;


 int EP_RING_FULL ;
 int cdns3_ep_run_transfer (struct cdns3_endpoint*,struct usb_request*) ;
 struct usb_request* cdns3_next_request (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static int cdns3_start_all_request(struct cdns3_device *priv_dev,
       struct cdns3_endpoint *priv_ep)
{
 struct usb_request *request;
 int ret = 0;

 while (!list_empty(&priv_ep->deferred_req_list)) {
  request = cdns3_next_request(&priv_ep->deferred_req_list);

  ret = cdns3_ep_run_transfer(priv_ep, request);
  if (ret)
   return ret;

  list_del(&request->list);
  list_add_tail(&request->list,
         &priv_ep->pending_req_list);
 }

 priv_ep->flags &= ~EP_RING_FULL;
 return ret;
}
