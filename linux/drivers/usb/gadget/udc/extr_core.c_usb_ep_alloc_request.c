
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_ep {TYPE_1__* ops; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct usb_request* (* alloc_request ) (struct usb_ep*,int ) ;} ;


 int ENOMEM ;
 struct usb_request* stub1 (struct usb_ep*,int ) ;
 int trace_usb_ep_alloc_request (struct usb_ep*,struct usb_request*,int ) ;

struct usb_request *usb_ep_alloc_request(struct usb_ep *ep,
             gfp_t gfp_flags)
{
 struct usb_request *req = ((void*)0);

 req = ep->ops->alloc_request(ep, gfp_flags);

 trace_usb_ep_alloc_request(ep, req, req ? 0 : -ENOMEM);

 return req;
}
