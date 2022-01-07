
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int status; scalar_t__ actual; } ;
struct dwc3_request {scalar_t__ status; int list; TYPE_2__ request; struct dwc3_ep* dep; } ;
struct TYPE_5__ {int desc; } ;
struct dwc3_ep {int flags; TYPE_1__ endpoint; int pending_list; TYPE_2__* name; struct dwc3* dwc; } ;
struct dwc3 {int dev; } ;


 int DWC3_EP_PENDING_REQUEST ;
 int DWC3_EP_TRANSFER_STARTED ;
 scalar_t__ DWC3_REQUEST_STATUS_COMPLETED ;
 scalar_t__ DWC3_REQUEST_STATUS_QUEUED ;
 int EINPROGRESS ;
 int EINVAL ;
 int ESHUTDOWN ;
 scalar_t__ WARN (int,char*,TYPE_2__*,TYPE_2__*) ;
 int __dwc3_gadget_kick_transfer (struct dwc3_ep*) ;
 int __dwc3_gadget_start_isoc (struct dwc3_ep*) ;
 int dev_err (int ,char*,TYPE_2__*) ;
 int list_add_tail (int *,int *) ;
 int pm_runtime_get (int ) ;
 int trace_dwc3_ep_queue (struct dwc3_request*) ;
 scalar_t__ usb_endpoint_xfer_isoc (int ) ;

__attribute__((used)) static int __dwc3_gadget_ep_queue(struct dwc3_ep *dep, struct dwc3_request *req)
{
 struct dwc3 *dwc = dep->dwc;

 if (!dep->endpoint.desc) {
  dev_err(dwc->dev, "%s: can't queue to disabled endpoint\n",
    dep->name);
  return -ESHUTDOWN;
 }

 if (WARN(req->dep != dep, "request %pK belongs to '%s'\n",
    &req->request, req->dep->name))
  return -EINVAL;

 if (WARN(req->status < DWC3_REQUEST_STATUS_COMPLETED,
    "%s: request %pK already in flight\n",
    dep->name, &req->request))
  return -EINVAL;

 pm_runtime_get(dwc->dev);

 req->request.actual = 0;
 req->request.status = -EINPROGRESS;

 trace_dwc3_ep_queue(req);

 list_add_tail(&req->list, &dep->pending_list);
 req->status = DWC3_REQUEST_STATUS_QUEUED;
 if (usb_endpoint_xfer_isoc(dep->endpoint.desc)) {
  if (!(dep->flags & DWC3_EP_PENDING_REQUEST) &&
    !(dep->flags & DWC3_EP_TRANSFER_STARTED))
   return 0;

  if ((dep->flags & DWC3_EP_PENDING_REQUEST)) {
   if (!(dep->flags & DWC3_EP_TRANSFER_STARTED)) {
    return __dwc3_gadget_start_isoc(dep);
   }
  }
 }

 return __dwc3_gadget_kick_transfer(dep);
}
