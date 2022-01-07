
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct dwc3_event_depevt {size_t endpoint_number; int endpoint_event; int parameters; } ;
struct dwc3_ep {int flags; } ;
struct dwc3 {struct dwc3_ep** eps; } ;


 size_t DEPEVT_PARAMETER_CMD (int ) ;
 size_t DWC3_DEPCMD_ENDTRANSFER ;






 int DWC3_EP_ENABLED ;
 int DWC3_EP_TRANSFER_STARTED ;
 int dwc3_ep0_interrupt (struct dwc3*,struct dwc3_event_depevt const*) ;
 int dwc3_gadget_endpoint_transfer_in_progress (struct dwc3_ep*,struct dwc3_event_depevt const*) ;
 int dwc3_gadget_endpoint_transfer_not_ready (struct dwc3_ep*,struct dwc3_event_depevt const*) ;
 int dwc3_gadget_ep_cleanup_cancelled_requests (struct dwc3_ep*) ;

__attribute__((used)) static void dwc3_endpoint_interrupt(struct dwc3 *dwc,
  const struct dwc3_event_depevt *event)
{
 struct dwc3_ep *dep;
 u8 epnum = event->endpoint_number;
 u8 cmd;

 dep = dwc->eps[epnum];

 if (!(dep->flags & DWC3_EP_ENABLED)) {
  if (!(dep->flags & DWC3_EP_TRANSFER_STARTED))
   return;


  if (event->endpoint_event != 133)
   return;
 }

 if (epnum == 0 || epnum == 1) {
  dwc3_ep0_interrupt(dwc, event);
  return;
 }

 switch (event->endpoint_event) {
 case 129:
  dwc3_gadget_endpoint_transfer_in_progress(dep, event);
  break;
 case 128:
  dwc3_gadget_endpoint_transfer_not_ready(dep, event);
  break;
 case 133:
  cmd = DEPEVT_PARAMETER_CMD(event->parameters);

  if (cmd == DWC3_DEPCMD_ENDTRANSFER) {
   dep->flags &= ~DWC3_EP_TRANSFER_STARTED;
   dwc3_gadget_ep_cleanup_cancelled_requests(dep);
  }
  break;
 case 131:
 case 130:
 case 132:
  break;
 }
}
