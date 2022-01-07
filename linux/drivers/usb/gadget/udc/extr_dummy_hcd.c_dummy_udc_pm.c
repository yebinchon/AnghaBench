
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_hcd {int dummy; } ;
struct dummy {int udc_suspended; int lock; } ;


 int set_link_state (struct dummy_hcd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void dummy_udc_pm(struct dummy *dum, struct dummy_hcd *dum_hcd,
  int suspend)
{
 spin_lock_irq(&dum->lock);
 dum->udc_suspended = suspend;
 set_link_state(dum_hcd);
 spin_unlock_irq(&dum->lock);
}
