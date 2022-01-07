
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {scalar_t__ rh_state; int enabled_hrtimer_events; scalar_t__ isoc_count; scalar_t__ async_count; scalar_t__ intr_count; scalar_t__ need_io_watchdog; } ;


 int BIT (int ) ;
 int EHCI_HRTIMER_IO_WATCHDOG ;
 scalar_t__ EHCI_RH_RUNNING ;
 int ehci_enable_event (struct ehci_hcd*,int ,int) ;

__attribute__((used)) static void turn_on_io_watchdog(struct ehci_hcd *ehci)
{

 if (ehci->rh_state != EHCI_RH_RUNNING ||
   (ehci->enabled_hrtimer_events &
    BIT(EHCI_HRTIMER_IO_WATCHDOG)))
  return;





 if (ehci->isoc_count > 0 || (ehci->need_io_watchdog &&
   ehci->async_count + ehci->intr_count > 0))
  ehci_enable_event(ehci, EHCI_HRTIMER_IO_WATCHDOG, 1);
}
