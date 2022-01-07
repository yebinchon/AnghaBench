
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct dwc2_hsotg_req {struct usb_request req; } ;
struct dwc2_hsotg_ep {int dir_in; } ;
struct dwc2_hsotg {int gadget; } ;


 int usb_gadget_unmap_request (int *,struct usb_request*,int ) ;

__attribute__((used)) static void dwc2_hsotg_unmap_dma(struct dwc2_hsotg *hsotg,
     struct dwc2_hsotg_ep *hs_ep,
    struct dwc2_hsotg_req *hs_req)
{
 struct usb_request *req = &hs_req->req;

 usb_gadget_unmap_request(&hsotg->gadget, req, hs_ep->dir_in);
}
