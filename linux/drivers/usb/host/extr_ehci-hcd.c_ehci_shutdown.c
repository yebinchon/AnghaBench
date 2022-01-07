
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ehci_hcd {int shutdown; int hrtimer; int lock; scalar_t__ enabled_hrtimer_events; int rh_state; int sbrn; } ;


 int EHCI_RH_STOPPING ;
 int ehci_silence_controller (struct ehci_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int hrtimer_cancel (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ehci_shutdown(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);







 if (!ehci->sbrn)
  return;

 spin_lock_irq(&ehci->lock);
 ehci->shutdown = 1;
 ehci->rh_state = EHCI_RH_STOPPING;
 ehci->enabled_hrtimer_events = 0;
 spin_unlock_irq(&ehci->lock);

 ehci_silence_controller(ehci);

 hrtimer_cancel(&ehci->hrtimer);
}
