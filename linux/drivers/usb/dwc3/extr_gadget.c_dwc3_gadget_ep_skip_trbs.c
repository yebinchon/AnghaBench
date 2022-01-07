
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_trb {int ctrl; } ;
struct dwc3_request {int num_trbs; struct dwc3_trb* trb; } ;
struct dwc3_ep {int dummy; } ;


 int DWC3_TRB_CTRL_HWO ;
 int dwc3_ep_inc_deq (struct dwc3_ep*) ;

__attribute__((used)) static void dwc3_gadget_ep_skip_trbs(struct dwc3_ep *dep, struct dwc3_request *req)
{
 int i;
 for (i = 0; i < req->num_trbs; i++) {
  struct dwc3_trb *trb;

  trb = req->trb + i;
  trb->ctrl &= ~DWC3_TRB_CTRL_HWO;
  dwc3_ep_inc_deq(dep);
 }

 req->num_trbs = 0;
}
