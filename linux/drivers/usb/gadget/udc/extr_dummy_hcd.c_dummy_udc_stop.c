
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dummy_hcd {struct dummy* dum; } ;
struct dummy {scalar_t__ callback_usage; int lock; int * driver; scalar_t__ ints_enabled; } ;


 struct dummy_hcd* gadget_to_dummy_hcd (struct usb_gadget*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stop_activity (struct dummy*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dummy_udc_stop(struct usb_gadget *g)
{
 struct dummy_hcd *dum_hcd = gadget_to_dummy_hcd(g);
 struct dummy *dum = dum_hcd->dum;

 spin_lock_irq(&dum->lock);
 dum->ints_enabled = 0;
 stop_activity(dum);


 while (dum->callback_usage > 0) {
  spin_unlock_irq(&dum->lock);
  usleep_range(1000, 2000);
  spin_lock_irq(&dum->lock);
 }

 dum->driver = ((void*)0);
 spin_unlock_irq(&dum->lock);

 return 0;
}
