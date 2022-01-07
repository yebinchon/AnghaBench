
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_ep {int ep_state; int stop_cmd_timer; struct xhci_hcd* xhci; } ;
struct xhci_hcd {int lock; } ;
struct timer_list {int dummy; } ;


 int EP_STOP_CMD_PENDING ;
 struct xhci_virt_ep* ep ;
 struct xhci_virt_ep* from_timer (int ,struct timer_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_cmd_timer ;
 scalar_t__ timer_pending (int *) ;
 int trace_xhci_dbg_cancel_urb ;
 int xhci_dbg (struct xhci_hcd*,char*) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_hc_died (struct xhci_hcd*) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

void xhci_stop_endpoint_command_watchdog(struct timer_list *t)
{
 struct xhci_virt_ep *ep = from_timer(ep, t, stop_cmd_timer);
 struct xhci_hcd *xhci = ep->xhci;
 unsigned long flags;

 spin_lock_irqsave(&xhci->lock, flags);


 if (!(ep->ep_state & EP_STOP_CMD_PENDING) ||
     timer_pending(&ep->stop_cmd_timer)) {
  spin_unlock_irqrestore(&xhci->lock, flags);
  xhci_dbg(xhci, "Stop EP timer raced with cmd completion, exit");
  return;
 }

 xhci_warn(xhci, "xHCI host not responding to stop endpoint command.\n");
 ep->ep_state &= ~EP_STOP_CMD_PENDING;

 xhci_halt(xhci);






 xhci_hc_died(xhci);

 spin_unlock_irqrestore(&xhci->lock, flags);
 xhci_dbg_trace(xhci, trace_xhci_dbg_cancel_urb,
   "xHCI host controller is dead.");
}
