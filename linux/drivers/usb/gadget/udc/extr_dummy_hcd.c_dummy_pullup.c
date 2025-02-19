
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dev; } ;
struct dummy_hcd {int dummy; } ;
struct dummy {int pullup; int lock; } ;


 int dummy_hcd_to_hcd (struct dummy_hcd*) ;
 struct dummy* gadget_dev_to_dummy (int *) ;
 struct dummy_hcd* gadget_to_dummy_hcd (struct usb_gadget*) ;
 int set_link_state (struct dummy_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_poll_rh_status (int ) ;

__attribute__((used)) static int dummy_pullup(struct usb_gadget *_gadget, int value)
{
 struct dummy_hcd *dum_hcd;
 struct dummy *dum;
 unsigned long flags;

 dum = gadget_dev_to_dummy(&_gadget->dev);
 dum_hcd = gadget_to_dummy_hcd(_gadget);

 spin_lock_irqsave(&dum->lock, flags);
 dum->pullup = (value != 0);
 set_link_state(dum_hcd);
 spin_unlock_irqrestore(&dum->lock, flags);

 usb_hcd_poll_rh_status(dummy_hcd_to_hcd(dum_hcd));
 return 0;
}
