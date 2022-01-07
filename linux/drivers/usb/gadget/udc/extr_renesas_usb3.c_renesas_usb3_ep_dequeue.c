
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int length; } ;
struct usb_ep {int dummy; } ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int num; } ;
struct renesas_usb3 {int dummy; } ;


 int ECONNRESET ;
 int dev_dbg (int ,char*,int ,int ) ;
 int usb3_dma_try_stop (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_request_done_pipen (struct renesas_usb3*,struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;
 int usb3_to_dev (struct renesas_usb3*) ;
 struct renesas_usb3_ep* usb_ep_to_usb3_ep (struct usb_ep*) ;
 struct renesas_usb3_request* usb_req_to_usb3_req (struct usb_request*) ;

__attribute__((used)) static int renesas_usb3_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
{
 struct renesas_usb3_ep *usb3_ep = usb_ep_to_usb3_ep(_ep);
 struct renesas_usb3_request *usb3_req = usb_req_to_usb3_req(_req);
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);

 dev_dbg(usb3_to_dev(usb3), "ep_dequeue: ep%2d, %u\n", usb3_ep->num,
  _req->length);

 usb3_dma_try_stop(usb3_ep, usb3_req);
 usb3_request_done_pipen(usb3, usb3_ep, usb3_req, -ECONNRESET);

 return 0;
}
