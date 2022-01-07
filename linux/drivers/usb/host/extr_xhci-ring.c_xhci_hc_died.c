
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int xhc_state; int * devs; int hcs_params1; } ;


 int HCS_MAX_SLOTS (int ) ;
 int XHCI_STATE_DYING ;
 int XHCI_STATE_REMOVING ;
 int usb_hc_died (int ) ;
 int xhci_cleanup_command_queue (struct xhci_hcd*) ;
 int xhci_err (struct xhci_hcd*,char*) ;
 int xhci_kill_endpoint_urbs (struct xhci_hcd*,int,int) ;
 int xhci_to_hcd (struct xhci_hcd*) ;

void xhci_hc_died(struct xhci_hcd *xhci)
{
 int i, j;

 if (xhci->xhc_state & XHCI_STATE_DYING)
  return;

 xhci_err(xhci, "xHCI host controller not responding, assume dead\n");
 xhci->xhc_state |= XHCI_STATE_DYING;

 xhci_cleanup_command_queue(xhci);


 for (i = 0; i <= HCS_MAX_SLOTS(xhci->hcs_params1); i++) {
  if (!xhci->devs[i])
   continue;
  for (j = 0; j < 31; j++)
   xhci_kill_endpoint_urbs(xhci, i, j);
 }


 if (!(xhci->xhc_state & XHCI_STATE_REMOVING))
  usb_hc_died(xhci_to_hcd(xhci));
}
