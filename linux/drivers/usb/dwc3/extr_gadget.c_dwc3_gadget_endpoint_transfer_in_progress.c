
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_event_depevt {int status; } ;
struct dwc3_ep {int flags; int started_list; struct dwc3* dwc; } ;
struct dwc3 {scalar_t__ revision; int u1u2; int regs; struct dwc3_ep** eps; } ;


 int DEPEVT_STATUS_BUSERR ;
 int DEPEVT_STATUS_MISSED_ISOC ;
 int DWC3_DCTL ;
 int DWC3_ENDPOINTS_NUM ;
 int DWC3_EP_ENABLED ;
 scalar_t__ DWC3_REVISION_183A ;
 unsigned int ECONNRESET ;
 unsigned int EXDEV ;
 int dwc3_gadget_endpoint_frame_from_event (struct dwc3_ep*,struct dwc3_event_depevt const*) ;
 int dwc3_gadget_ep_cleanup_completed_requests (struct dwc3_ep*,struct dwc3_event_depevt const*,unsigned int) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_stop_active_transfer (struct dwc3_ep*,int,int) ;
 int dwc3_writel (int ,int ,int ) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void dwc3_gadget_endpoint_transfer_in_progress(struct dwc3_ep *dep,
  const struct dwc3_event_depevt *event)
{
 struct dwc3 *dwc = dep->dwc;
 unsigned status = 0;
 bool stop = 0;

 dwc3_gadget_endpoint_frame_from_event(dep, event);

 if (event->status & DEPEVT_STATUS_BUSERR)
  status = -ECONNRESET;

 if (event->status & DEPEVT_STATUS_MISSED_ISOC) {
  status = -EXDEV;

  if (list_empty(&dep->started_list))
   stop = 1;
 }

 dwc3_gadget_ep_cleanup_completed_requests(dep, event, status);

 if (stop) {
  dwc3_stop_active_transfer(dep, 1, 1);
  dep->flags = DWC3_EP_ENABLED;
 }





 if (dwc->revision < DWC3_REVISION_183A) {
  u32 reg;
  int i;

  for (i = 0; i < DWC3_ENDPOINTS_NUM; i++) {
   dep = dwc->eps[i];

   if (!(dep->flags & DWC3_EP_ENABLED))
    continue;

   if (!list_empty(&dep->started_list))
    return;
  }

  reg = dwc3_readl(dwc->regs, DWC3_DCTL);
  reg |= dwc->u1u2;
  dwc3_writel(dwc->regs, DWC3_DCTL, reg);

  dwc->u1u2 = 0;
 }
}
