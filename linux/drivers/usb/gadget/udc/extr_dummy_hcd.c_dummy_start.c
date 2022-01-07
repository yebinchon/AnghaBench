
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int otg_port; } ;
struct usb_hcd {int uses_new_polling; TYPE_1__ self; int state; int power_budget; } ;
struct dummy_hcd {int urbp_list; int rh_state; int timer; TYPE_2__* dum; } ;
struct TYPE_4__ {int lock; } ;


 int DUMMY_RH_RUNNING ;
 int HC_STATE_RUNNING ;
 int INIT_LIST_HEAD (int *) ;
 int POWER_BUDGET ;
 int dev_attr_urbs ;
 int device_create_file (int ,int *) ;
 int dummy_dev (struct dummy_hcd*) ;
 int dummy_start_ss (struct dummy_hcd*) ;
 int dummy_timer ;
 struct dummy_hcd* hcd_to_dummy_hcd (struct usb_hcd*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int usb_hcd_is_primary_hcd (struct usb_hcd*) ;

__attribute__((used)) static int dummy_start(struct usb_hcd *hcd)
{
 struct dummy_hcd *dum_hcd = hcd_to_dummy_hcd(hcd);






 if (!usb_hcd_is_primary_hcd(hcd))
  return dummy_start_ss(dum_hcd);

 spin_lock_init(&dum_hcd->dum->lock);
 timer_setup(&dum_hcd->timer, dummy_timer, 0);
 dum_hcd->rh_state = DUMMY_RH_RUNNING;

 INIT_LIST_HEAD(&dum_hcd->urbp_list);

 hcd->power_budget = POWER_BUDGET;
 hcd->state = HC_STATE_RUNNING;
 hcd->uses_new_polling = 1;






 return device_create_file(dummy_dev(dum_hcd), &dev_attr_urbs);
}
