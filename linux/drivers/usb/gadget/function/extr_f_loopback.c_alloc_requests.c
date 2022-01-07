
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_request {struct usb_request* context; int buf; void* complete; } ;
struct usb_composite_dev {int dummy; } ;
struct f_loopback {int qlen; int in_ep; TYPE_1__* out_ep; int buflen; } ;
struct TYPE_4__ {int name; } ;


 int ENOMEM ;
 int ERROR (struct usb_composite_dev*,char*,int ,int) ;
 int GFP_ATOMIC ;
 int free_ep_req (TYPE_1__*,struct usb_request*) ;
 struct usb_request* lb_alloc_ep_req (TYPE_1__*,int ) ;
 void* loopback_complete ;
 struct usb_request* usb_ep_alloc_request (int ,int ) ;
 int usb_ep_free_request (int ,struct usb_request*) ;
 int usb_ep_queue (TYPE_1__*,struct usb_request*,int ) ;

__attribute__((used)) static int alloc_requests(struct usb_composite_dev *cdev,
     struct f_loopback *loop)
{
 struct usb_request *in_req, *out_req;
 int i;
 int result = 0;







 for (i = 0; i < loop->qlen && result == 0; i++) {
  result = -ENOMEM;

  in_req = usb_ep_alloc_request(loop->in_ep, GFP_ATOMIC);
  if (!in_req)
   goto fail;

  out_req = lb_alloc_ep_req(loop->out_ep, loop->buflen);
  if (!out_req)
   goto fail_in;

  in_req->complete = loopback_complete;
  out_req->complete = loopback_complete;

  in_req->buf = out_req->buf;

  in_req->context = out_req;
  out_req->context = in_req;

  result = usb_ep_queue(loop->out_ep, out_req, GFP_ATOMIC);
  if (result) {
   ERROR(cdev, "%s queue req --> %d\n",
     loop->out_ep->name, result);
   goto fail_out;
  }
 }

 return 0;

fail_out:
 free_ep_req(loop->out_ep, out_req);
fail_in:
 usb_ep_free_request(loop->in_ep, in_req);
fail:
 return result;
}
