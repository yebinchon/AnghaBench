
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int uses_new_polling; int state; int power_budget; } ;
struct max3421_hcd {int ep_list; int rh_state; int lock; } ;


 int HC_STATE_RUNNING ;
 int INIT_LIST_HEAD (int *) ;
 int MAX3421_RH_RUNNING ;
 int POWER_BUDGET ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
max3421_start(struct usb_hcd *hcd)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);

 spin_lock_init(&max3421_hcd->lock);
 max3421_hcd->rh_state = MAX3421_RH_RUNNING;

 INIT_LIST_HEAD(&max3421_hcd->ep_list);

 hcd->power_budget = POWER_BUDGET;
 hcd->state = HC_STATE_RUNNING;
 hcd->uses_new_polling = 1;
 return 0;
}
