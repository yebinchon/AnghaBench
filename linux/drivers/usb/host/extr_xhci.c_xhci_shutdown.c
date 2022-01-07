
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd {int quirks; TYPE_1__* op_regs; int lock; } ;
struct TYPE_4__ {int sysdev; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct TYPE_3__ {int status; } ;


 int PCI_D3hot ;
 int XHCI_SPURIOUS_REBOOT ;
 int XHCI_SPURIOUS_WAKEUP ;
 struct xhci_hcd* hcd_to_xhci (struct usb_hcd*) ;
 int pci_set_power_state (int ,int ) ;
 int readl (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int to_pci_dev (int ) ;
 int trace_xhci_dbg_init ;
 int usb_disable_xhci_ports (int ) ;
 int xhci_cleanup_msix (struct xhci_hcd*) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,int ) ;
 int xhci_halt (struct xhci_hcd*) ;
 int xhci_reset (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_shutdown(struct usb_hcd *hcd)
{
 struct xhci_hcd *xhci = hcd_to_xhci(hcd);

 if (xhci->quirks & XHCI_SPURIOUS_REBOOT)
  usb_disable_xhci_ports(to_pci_dev(hcd->self.sysdev));

 spin_lock_irq(&xhci->lock);
 xhci_halt(xhci);

 if (xhci->quirks & XHCI_SPURIOUS_WAKEUP)
  xhci_reset(xhci);
 spin_unlock_irq(&xhci->lock);

 xhci_cleanup_msix(xhci);

 xhci_dbg_trace(xhci, trace_xhci_dbg_init,
   "xhci_shutdown completed - status = %x",
   readl(&xhci->op_regs->status));


 if (xhci->quirks & XHCI_SPURIOUS_WAKEUP)
  pci_set_power_state(to_pci_dev(hcd->self.sysdev), PCI_D3hot);
}
