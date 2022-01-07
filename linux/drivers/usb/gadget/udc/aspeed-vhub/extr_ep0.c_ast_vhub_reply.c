
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_request {char* buf; int length; int zero; int * complete; int status; } ;
struct TYPE_10__ {TYPE_3__* ops; } ;
struct TYPE_6__ {struct usb_request req; } ;
struct TYPE_7__ {int dir_in; TYPE_1__ req; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_4__* vhub; TYPE_5__ ep; TYPE_2__ ep0; } ;
struct TYPE_9__ {int lock; } ;
struct TYPE_8__ {scalar_t__ (* queue ) (TYPE_5__*,struct usb_request*,int ) ;} ;


 int AST_VHUB_EP0_MAX_PACKET ;
 int EINPROGRESS ;
 int GFP_ATOMIC ;
 scalar_t__ WARN_ON (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int std_req_data ;
 int std_req_stall ;
 scalar_t__ stub1 (TYPE_5__*,struct usb_request*,int ) ;

int ast_vhub_reply(struct ast_vhub_ep *ep, char *ptr, int len)
{
 struct usb_request *req = &ep->ep0.req.req;
 int rc;

 if (WARN_ON(ep->d_idx != 0))
  return std_req_stall;
 if (WARN_ON(!ep->ep0.dir_in))
  return std_req_stall;
 if (WARN_ON(len > AST_VHUB_EP0_MAX_PACKET))
  return std_req_stall;
 if (WARN_ON(req->status == -EINPROGRESS))
  return std_req_stall;

 req->buf = ptr;
 req->length = len;
 req->complete = ((void*)0);
 req->zero = 1;






 spin_unlock(&ep->vhub->lock);
 if (ep->ep.ops->queue(&ep->ep, req, GFP_ATOMIC))
  rc = std_req_stall;
 else
  rc = std_req_data;
 spin_lock(&ep->vhub->lock);
 return rc;
}
