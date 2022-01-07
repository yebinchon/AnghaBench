
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct cdns3_request {TYPE_1__* aligned_buf; } ;
struct TYPE_2__ {scalar_t__ in_use; } ;


 int kfree (struct cdns3_request*) ;
 struct cdns3_request* to_cdns3_request (struct usb_request*) ;
 int trace_cdns3_free_request (struct cdns3_request*) ;

void cdns3_gadget_ep_free_request(struct usb_ep *ep,
      struct usb_request *request)
{
 struct cdns3_request *priv_req = to_cdns3_request(request);

 if (priv_req->aligned_buf)
  priv_req->aligned_buf->in_use = 0;

 trace_cdns3_free_request(priv_req);
 kfree(priv_req);
}
