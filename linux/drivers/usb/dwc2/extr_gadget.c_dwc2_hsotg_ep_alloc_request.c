
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc2_hsotg_req {struct usb_request req; int queue; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct dwc2_hsotg_req* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_request *dwc2_hsotg_ep_alloc_request(struct usb_ep *ep,
             gfp_t flags)
{
 struct dwc2_hsotg_req *req;

 req = kzalloc(sizeof(*req), flags);
 if (!req)
  return ((void*)0);

 INIT_LIST_HEAD(&req->queue);

 return &req->req;
}
