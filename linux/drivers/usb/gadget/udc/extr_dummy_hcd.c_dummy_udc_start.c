
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget_driver {int max_speed; } ;
struct usb_gadget {int speed; } ;
struct dummy_hcd {struct dummy* dum; } ;
struct dummy {int ints_enabled; int lock; struct usb_gadget_driver* driver; scalar_t__ devstatus; } ;


 int EINVAL ;




 int dev_err (int ,char*,int ) ;
 int dummy_dev (struct dummy_hcd*) ;
 struct dummy_hcd* gadget_to_dummy_hcd (struct usb_gadget*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int dummy_udc_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct dummy_hcd *dum_hcd = gadget_to_dummy_hcd(g);
 struct dummy *dum = dum_hcd->dum;

 switch (g->speed) {

 case 129:
 case 131:
 case 130:
 case 128:
  break;
 default:
  dev_err(dummy_dev(dum_hcd), "Unsupported driver max speed %d\n",
    driver->max_speed);
  return -EINVAL;
 }






 spin_lock_irq(&dum->lock);
 dum->devstatus = 0;
 dum->driver = driver;
 dum->ints_enabled = 1;
 spin_unlock_irq(&dum->lock);

 return 0;
}
