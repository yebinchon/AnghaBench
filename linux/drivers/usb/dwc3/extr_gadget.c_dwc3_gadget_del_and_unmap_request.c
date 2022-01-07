
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct dwc3_request {int needs_extra_trb; int * trb; int direction; TYPE_1__ request; scalar_t__ remaining; int list; } ;
struct dwc3_ep {int number; struct dwc3* dwc; } ;
struct dwc3 {int dev; int sysdev; } ;


 int EINPROGRESS ;
 int list_del (int *) ;
 int pm_runtime_put (int ) ;
 int trace_dwc3_gadget_giveback (struct dwc3_request*) ;
 int usb_gadget_unmap_request_by_dev (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void dwc3_gadget_del_and_unmap_request(struct dwc3_ep *dep,
  struct dwc3_request *req, int status)
{
 struct dwc3 *dwc = dep->dwc;

 list_del(&req->list);
 req->remaining = 0;
 req->needs_extra_trb = 0;

 if (req->request.status == -EINPROGRESS)
  req->request.status = status;

 if (req->trb)
  usb_gadget_unmap_request_by_dev(dwc->sysdev,
    &req->request, req->direction);

 req->trb = ((void*)0);
 trace_dwc3_gadget_giveback(req);

 if (dep->number > 1)
  pm_runtime_put(dwc->dev);
}
