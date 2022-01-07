
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct isp1760_request {struct usb_request req; } ;
typedef int gfp_t ;


 struct isp1760_request* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *isp1760_ep_alloc_request(struct usb_ep *ep,
          gfp_t gfp_flags)
{
 struct isp1760_request *req;

 req = kzalloc(sizeof(*req), gfp_flags);
 if (!req)
  return ((void*)0);

 return &req->req;
}
