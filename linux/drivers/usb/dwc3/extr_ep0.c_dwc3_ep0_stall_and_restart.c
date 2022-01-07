
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_request {int dummy; } ;
struct dwc3_ep {int pending_list; void* flags; } ;
struct dwc3 {int delayed_status; int ep0state; struct dwc3_ep** eps; } ;


 void* DWC3_EP_ENABLED ;
 int ECONNRESET ;
 int EP0_SETUP_PHASE ;
 int __dwc3_gadget_ep_set_halt (struct dwc3_ep*,int,int) ;
 int dwc3_ep0_out_start (struct dwc3*) ;
 int dwc3_gadget_giveback (struct dwc3_ep*,struct dwc3_request*,int ) ;
 int list_empty (int *) ;
 struct dwc3_request* next_request (int *) ;

__attribute__((used)) static void dwc3_ep0_stall_and_restart(struct dwc3 *dwc)
{
 struct dwc3_ep *dep;


 dep = dwc->eps[1];
 dep->flags = DWC3_EP_ENABLED;


 dep = dwc->eps[0];
 __dwc3_gadget_ep_set_halt(dep, 1, 0);
 dep->flags = DWC3_EP_ENABLED;
 dwc->delayed_status = 0;

 if (!list_empty(&dep->pending_list)) {
  struct dwc3_request *req;

  req = next_request(&dep->pending_list);
  dwc3_gadget_giveback(dep, req, -ECONNRESET);
 }

 dwc->ep0state = EP0_SETUP_PHASE;
 dwc3_ep0_out_start(dwc);
}
