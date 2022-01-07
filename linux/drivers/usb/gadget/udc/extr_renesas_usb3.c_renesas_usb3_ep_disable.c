
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int dummy; } ;


 int ESHUTDOWN ;
 int usb3_disable_pipe_n (struct renesas_usb3_ep*) ;
 int usb3_dma_try_stop (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 struct renesas_usb3_request* usb3_get_request (struct renesas_usb3_ep*) ;
 int usb3_request_done (struct renesas_usb3_ep*,struct renesas_usb3_request*,int ) ;
 struct renesas_usb3_ep* usb_ep_to_usb3_ep (struct usb_ep*) ;

__attribute__((used)) static int renesas_usb3_ep_disable(struct usb_ep *_ep)
{
 struct renesas_usb3_ep *usb3_ep = usb_ep_to_usb3_ep(_ep);
 struct renesas_usb3_request *usb3_req;

 do {
  usb3_req = usb3_get_request(usb3_ep);
  if (!usb3_req)
   break;
  usb3_dma_try_stop(usb3_ep, usb3_req);
  usb3_request_done(usb3_ep, usb3_req, -ESHUTDOWN);
 } while (1);

 return usb3_disable_pipe_n(usb3_ep);
}
