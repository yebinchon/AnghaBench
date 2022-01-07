
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int status; int list; scalar_t__ actual; } ;
struct usb_ep {int desc; } ;
struct cdns3_request {int dummy; } ;
struct cdns3_endpoint {int flags; int deferred_req_list; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ dev_ver; scalar_t__ hw_configured_flag; int sysdev; } ;
typedef int gfp_t ;


 scalar_t__ DEV_VER_V2 ;
 int EINPROGRESS ;
 int EP_STALLED ;
 int EP_STALL_PENDING ;
 int cdns3_prepare_aligned_request_buf (struct cdns3_request*) ;
 int cdns3_start_all_request (struct cdns3_device*,struct cdns3_endpoint*) ;
 int cdns3_wa2_gadget_ep_queue (struct cdns3_device*,struct cdns3_endpoint*,struct cdns3_request*) ;
 struct cdns3_endpoint* ep_to_cdns3_ep (struct usb_ep*) ;
 int list_add_tail (int *,int *) ;
 struct cdns3_request* to_cdns3_request (struct usb_request*) ;
 int trace_cdns3_ep_queue (struct cdns3_request*) ;
 int usb_endpoint_dir_in (int ) ;
 int usb_gadget_map_request_by_dev (int ,struct usb_request*,int ) ;

__attribute__((used)) static int __cdns3_gadget_ep_queue(struct usb_ep *ep,
       struct usb_request *request,
       gfp_t gfp_flags)
{
 struct cdns3_endpoint *priv_ep = ep_to_cdns3_ep(ep);
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
 struct cdns3_request *priv_req;
 int ret = 0;

 request->actual = 0;
 request->status = -EINPROGRESS;
 priv_req = to_cdns3_request(request);
 trace_cdns3_ep_queue(priv_req);

 if (priv_dev->dev_ver < DEV_VER_V2) {
  ret = cdns3_wa2_gadget_ep_queue(priv_dev, priv_ep,
      priv_req);

  if (ret == EINPROGRESS)
   return 0;
 }

 ret = cdns3_prepare_aligned_request_buf(priv_req);
 if (ret < 0)
  return ret;

 ret = usb_gadget_map_request_by_dev(priv_dev->sysdev, request,
         usb_endpoint_dir_in(ep->desc));
 if (ret)
  return ret;

 list_add_tail(&request->list, &priv_ep->deferred_req_list);






 if (priv_dev->hw_configured_flag && !(priv_ep->flags & EP_STALLED) &&
     !(priv_ep->flags & EP_STALL_PENDING))
  cdns3_start_all_request(priv_dev, priv_ep);

 return 0;
}
