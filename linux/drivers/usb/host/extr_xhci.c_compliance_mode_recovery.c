
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xhci_hub {int num_ports; TYPE_1__** ports; } ;
struct xhci_hcd {int port_status_u0; int comp_mode_recovery_timer; struct usb_hcd* shared_hcd; struct xhci_hub usb3_rhub; } ;
struct usb_hcd {scalar_t__ state; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int COMP_MODE_RCVRY_MSECS ;
 scalar_t__ HC_STATE_SUSPENDED ;
 int PORT_PLS_MASK ;
 int USB_SS_PORT_LS_COMP_MOD ;
 int comp_mode_recovery_timer ;
 struct xhci_hcd* from_timer (struct xhci_hcd*,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int readl (int ) ;
 int trace_xhci_dbg_quirks ;
 int usb_hcd_poll_rh_status (struct usb_hcd*) ;
 int usb_hcd_resume_root_hub (struct usb_hcd*) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,...) ;

__attribute__((used)) static void compliance_mode_recovery(struct timer_list *t)
{
 struct xhci_hcd *xhci;
 struct usb_hcd *hcd;
 struct xhci_hub *rhub;
 u32 temp;
 int i;

 xhci = from_timer(xhci, t, comp_mode_recovery_timer);
 rhub = &xhci->usb3_rhub;

 for (i = 0; i < rhub->num_ports; i++) {
  temp = readl(rhub->ports[i]->addr);
  if ((temp & PORT_PLS_MASK) == USB_SS_PORT_LS_COMP_MOD) {




   xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
     "Compliance mode detected->port %d",
     i + 1);
   xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
     "Attempting compliance mode recovery");
   hcd = xhci->shared_hcd;

   if (hcd->state == HC_STATE_SUSPENDED)
    usb_hcd_resume_root_hub(hcd);

   usb_hcd_poll_rh_status(hcd);
  }
 }

 if (xhci->port_status_u0 != ((1 << rhub->num_ports) - 1))
  mod_timer(&xhci->comp_mode_recovery_timer,
   jiffies + msecs_to_jiffies(COMP_MODE_RCVRY_MSECS));
}
