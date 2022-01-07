
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct dwc2_hsotg_req {int dummy; } ;


 int kfree (struct dwc2_hsotg_req*) ;
 struct dwc2_hsotg_req* our_req (struct usb_request*) ;

__attribute__((used)) static void dwc2_hsotg_ep_free_request(struct usb_ep *ep,
           struct usb_request *req)
{
 struct dwc2_hsotg_req *hs_req = our_req(req);

 kfree(hs_req);
}
