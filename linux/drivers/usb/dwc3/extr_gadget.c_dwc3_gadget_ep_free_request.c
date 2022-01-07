
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc3_request {int dummy; } ;


 int kfree (struct dwc3_request*) ;
 struct dwc3_request* to_dwc3_request (struct usb_request*) ;
 int trace_dwc3_free_request (struct dwc3_request*) ;

__attribute__((used)) static void dwc3_gadget_ep_free_request(struct usb_ep *ep,
  struct usb_request *request)
{
 struct dwc3_request *req = to_dwc3_request(request);

 trace_dwc3_free_request(req);
 kfree(req);
}
