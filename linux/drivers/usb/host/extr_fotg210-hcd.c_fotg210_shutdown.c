
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct fotg210_hcd {int shutdown; int hrtimer; int lock; scalar_t__ enabled_hrtimer_events; int rh_state; } ;


 int FOTG210_RH_STOPPING ;
 int fotg210_silence_controller (struct fotg210_hcd*) ;
 struct fotg210_hcd* hcd_to_fotg210 (struct usb_hcd*) ;
 int hrtimer_cancel (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void fotg210_shutdown(struct usb_hcd *hcd)
{
 struct fotg210_hcd *fotg210 = hcd_to_fotg210(hcd);

 spin_lock_irq(&fotg210->lock);
 fotg210->shutdown = 1;
 fotg210->rh_state = FOTG210_RH_STOPPING;
 fotg210->enabled_hrtimer_events = 0;
 spin_unlock_irq(&fotg210->lock);

 fotg210_silence_controller(fotg210);

 hrtimer_cancel(&fotg210->hrtimer);
}
