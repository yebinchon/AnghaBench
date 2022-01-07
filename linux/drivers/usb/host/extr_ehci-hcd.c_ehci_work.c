
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int scanning; int need_rescan; scalar_t__ intr_count; scalar_t__ isoc_count; scalar_t__ async_count; } ;


 int scan_async (struct ehci_hcd*) ;
 int scan_intr (struct ehci_hcd*) ;
 int scan_isoc (struct ehci_hcd*) ;
 int turn_on_io_watchdog (struct ehci_hcd*) ;

__attribute__((used)) static void ehci_work (struct ehci_hcd *ehci)
{




 if (ehci->scanning) {
  ehci->need_rescan = 1;
  return;
 }
 ehci->scanning = 1;

 rescan:
 ehci->need_rescan = 0;
 if (ehci->async_count)
  scan_async(ehci);
 if (ehci->intr_count > 0)
  scan_intr(ehci);
 if (ehci->isoc_count > 0)
  scan_isoc(ehci);
 if (ehci->need_rescan)
  goto rescan;
 ehci->scanning = 0;





 turn_on_io_watchdog(ehci);
}
