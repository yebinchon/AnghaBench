
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc3_request {struct usb_request request; int status; struct dwc3_ep* dep; int epnum; int direction; } ;
struct dwc3_ep {int number; int direction; } ;
typedef int gfp_t ;


 int DWC3_REQUEST_STATUS_UNKNOWN ;
 struct dwc3_request* kzalloc (int,int ) ;
 struct dwc3_ep* to_dwc3_ep (struct usb_ep*) ;
 int trace_dwc3_alloc_request (struct dwc3_request*) ;

__attribute__((used)) static struct usb_request *dwc3_gadget_ep_alloc_request(struct usb_ep *ep,
  gfp_t gfp_flags)
{
 struct dwc3_request *req;
 struct dwc3_ep *dep = to_dwc3_ep(ep);

 req = kzalloc(sizeof(*req), gfp_flags);
 if (!req)
  return ((void*)0);

 req->direction = dep->direction;
 req->epnum = dep->number;
 req->dep = dep;
 req->status = DWC3_REQUEST_STATUS_UNKNOWN;

 trace_dwc3_alloc_request(req);

 return &req->request;
}
