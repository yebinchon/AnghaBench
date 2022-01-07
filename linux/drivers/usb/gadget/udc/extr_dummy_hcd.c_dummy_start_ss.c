
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dummy_hcd {int urbp_list; scalar_t__ stream_en_ep; int rh_state; int timer; } ;
struct TYPE_3__ {int otg_port; } ;
struct TYPE_4__ {int uses_new_polling; TYPE_1__ self; int state; int power_budget; } ;


 int DUMMY_RH_RUNNING ;
 int HC_STATE_RUNNING ;
 int INIT_LIST_HEAD (int *) ;
 int POWER_BUDGET_3 ;
 int dev_attr_urbs ;
 int device_create_file (int ,int *) ;
 int dummy_dev (struct dummy_hcd*) ;
 TYPE_2__* dummy_hcd_to_hcd (struct dummy_hcd*) ;
 int dummy_timer ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int dummy_start_ss(struct dummy_hcd *dum_hcd)
{
 timer_setup(&dum_hcd->timer, dummy_timer, 0);
 dum_hcd->rh_state = DUMMY_RH_RUNNING;
 dum_hcd->stream_en_ep = 0;
 INIT_LIST_HEAD(&dum_hcd->urbp_list);
 dummy_hcd_to_hcd(dum_hcd)->power_budget = POWER_BUDGET_3;
 dummy_hcd_to_hcd(dum_hcd)->state = HC_STATE_RUNNING;
 dummy_hcd_to_hcd(dum_hcd)->uses_new_polling = 1;



 return 0;


 return device_create_file(dummy_dev(dum_hcd), &dev_attr_urbs);
}
