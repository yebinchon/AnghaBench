
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; scalar_t__ actual; } ;
struct dwc3_request {int list; int epnum; TYPE_1__ request; } ;
struct dwc3_ep {int flags; int pending_list; int number; struct dwc3* dwc; } ;
struct dwc3 {scalar_t__ ep0state; int delayed_status; unsigned int ep0_expect_in; int * eps; scalar_t__ three_stage_setup; int gadget; int dev; } ;


 int DWC3_EP0_DIR_IN ;
 int DWC3_EP_PENDING_REQUEST ;
 int EINPROGRESS ;
 scalar_t__ EP0_DATA_PHASE ;
 scalar_t__ EP0_STATUS_PHASE ;
 int USB_STATE_CONFIGURED ;
 int __dwc3_ep0_do_control_data (struct dwc3*,int ,struct dwc3_request*) ;
 int __dwc3_ep0_do_control_status (struct dwc3*,int ) ;
 int dev_WARN (int ,char*) ;
 int list_add_tail (int *,int *) ;
 int usb_gadget_set_state (int *,int ) ;

__attribute__((used)) static int __dwc3_gadget_ep0_queue(struct dwc3_ep *dep,
  struct dwc3_request *req)
{
 struct dwc3 *dwc = dep->dwc;

 req->request.actual = 0;
 req->request.status = -EINPROGRESS;
 req->epnum = dep->number;

 list_add_tail(&req->list, &dep->pending_list);
 if (dep->flags & DWC3_EP_PENDING_REQUEST) {
  unsigned direction;

  direction = !!(dep->flags & DWC3_EP0_DIR_IN);

  if (dwc->ep0state != EP0_DATA_PHASE) {
   dev_WARN(dwc->dev, "Unexpected pending request\n");
   return 0;
  }

  __dwc3_ep0_do_control_data(dwc, dwc->eps[direction], req);

  dep->flags &= ~(DWC3_EP_PENDING_REQUEST |
    DWC3_EP0_DIR_IN);

  return 0;
 }





 if (dwc->delayed_status) {
  unsigned direction;

  direction = !dwc->ep0_expect_in;
  dwc->delayed_status = 0;
  usb_gadget_set_state(&dwc->gadget, USB_STATE_CONFIGURED);

  if (dwc->ep0state == EP0_STATUS_PHASE)
   __dwc3_ep0_do_control_status(dwc, dwc->eps[direction]);

  return 0;
 }
 if (dwc->three_stage_setup) {
  unsigned direction;

  direction = dwc->ep0_expect_in;
  dwc->ep0state = EP0_DATA_PHASE;

  __dwc3_ep0_do_control_data(dwc, dwc->eps[direction], req);

  dep->flags &= ~DWC3_EP0_DIR_IN;
 }

 return 0;
}
