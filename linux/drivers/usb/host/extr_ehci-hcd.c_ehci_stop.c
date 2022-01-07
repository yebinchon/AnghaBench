
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct ehci_hcd {int amd_pll_fix; TYPE_1__* regs; int lock; int hrtimer; scalar_t__ enabled_hrtimer_events; } ;
struct TYPE_2__ {int status; } ;


 int dbg_status (struct ehci_hcd*,char*,int ) ;
 int ehci_dbg (struct ehci_hcd*,char*) ;
 int ehci_mem_cleanup (struct ehci_hcd*) ;
 int ehci_quiesce (struct ehci_hcd*) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_reset (struct ehci_hcd*) ;
 int ehci_silence_controller (struct ehci_hcd*) ;
 int end_free_itds (struct ehci_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int hrtimer_cancel (int *) ;
 int remove_debug_files (struct ehci_hcd*) ;
 int remove_sysfs_files (struct ehci_hcd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_amd_dev_put () ;

__attribute__((used)) static void ehci_stop (struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);

 ehci_dbg (ehci, "stop\n");



 spin_lock_irq(&ehci->lock);
 ehci->enabled_hrtimer_events = 0;
 spin_unlock_irq(&ehci->lock);

 ehci_quiesce(ehci);
 ehci_silence_controller(ehci);
 ehci_reset (ehci);

 hrtimer_cancel(&ehci->hrtimer);
 remove_sysfs_files(ehci);
 remove_debug_files (ehci);


 spin_lock_irq (&ehci->lock);
 end_free_itds(ehci);
 spin_unlock_irq (&ehci->lock);
 ehci_mem_cleanup (ehci);

 if (ehci->amd_pll_fix == 1)
  usb_amd_dev_put();

 dbg_status (ehci, "ehci_stop completed",
      ehci_readl(ehci, &ehci->regs->status));
}
