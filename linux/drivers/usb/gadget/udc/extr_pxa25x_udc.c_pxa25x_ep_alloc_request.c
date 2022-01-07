
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct pxa25x_request {struct usb_request req; int queue; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct pxa25x_request* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *
pxa25x_ep_alloc_request (struct usb_ep *_ep, gfp_t gfp_flags)
{
 struct pxa25x_request *req;

 req = kzalloc(sizeof(*req), gfp_flags);
 if (!req)
  return ((void*)0);

 INIT_LIST_HEAD (&req->queue);
 return &req->req;
}
