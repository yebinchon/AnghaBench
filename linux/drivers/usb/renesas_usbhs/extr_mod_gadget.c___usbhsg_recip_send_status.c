
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int ep; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_pipe {int * handler; } ;
struct usb_request {int length; scalar_t__ zero; int * buf; int complete; } ;
struct device {int dummy; } ;
typedef int __le16 ;


 int GFP_ATOMIC ;
 int __usbhsg_recip_send_complete ;
 int cpu_to_le16 (unsigned short) ;
 int dev_err (struct device*,char*) ;
 int * kmalloc (int,int ) ;
 struct usb_request* usb_ep_alloc_request (int *,int ) ;
 int usb_ep_free_request (int *,struct usb_request*) ;
 int usbhs_fifo_pio_push_handler ;
 struct usbhsg_uep* usbhsg_gpriv_to_dcp (struct usbhsg_gpriv*) ;
 struct device* usbhsg_gpriv_to_dev (struct usbhsg_gpriv*) ;
 int usbhsg_queue_push (struct usbhsg_uep*,int ) ;
 int usbhsg_req_to_ureq (struct usb_request*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static void __usbhsg_recip_send_status(struct usbhsg_gpriv *gpriv,
           unsigned short status)
{
 struct usbhsg_uep *dcp = usbhsg_gpriv_to_dcp(gpriv);
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(dcp);
 struct device *dev = usbhsg_gpriv_to_dev(gpriv);
 struct usb_request *req;
 __le16 *buf;


 req = usb_ep_alloc_request(&dcp->ep, GFP_ATOMIC);
 if (!req) {
  dev_err(dev, "recip request allocation fail\n");
  return;
 }


 buf = kmalloc(sizeof(*buf), GFP_ATOMIC);
 if (!buf) {
  usb_ep_free_request(&dcp->ep, req);
  return;
 }


 *buf = cpu_to_le16(status);


 req->complete = __usbhsg_recip_send_complete;
 req->buf = buf;
 req->length = sizeof(*buf);
 req->zero = 0;


 pipe->handler = &usbhs_fifo_pio_push_handler;
 usbhsg_queue_push(dcp, usbhsg_req_to_ureq(req));
}
