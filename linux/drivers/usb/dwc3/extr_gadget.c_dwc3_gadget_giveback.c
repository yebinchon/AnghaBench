
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_request {int request; int status; } ;
struct dwc3_ep {int endpoint; struct dwc3* dwc; } ;
struct dwc3 {int lock; } ;


 int DWC3_REQUEST_STATUS_COMPLETED ;
 int dwc3_gadget_del_and_unmap_request (struct dwc3_ep*,struct dwc3_request*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (int *,int *) ;

void dwc3_gadget_giveback(struct dwc3_ep *dep, struct dwc3_request *req,
  int status)
{
 struct dwc3 *dwc = dep->dwc;

 dwc3_gadget_del_and_unmap_request(dep, req, status);
 req->status = DWC3_REQUEST_STATUS_COMPLETED;

 spin_unlock(&dwc->lock);
 usb_gadget_giveback_request(&dep->endpoint, &req->request);
 spin_lock(&dwc->lock);
}
