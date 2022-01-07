
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {scalar_t__ wq; } ;


 int OTGSC_INT_EN_BITS ;
 int OTGSC_INT_STATUS_BITS ;
 int ci_hdrc_otg_fsm_remove (struct ci_hdrc*) ;
 scalar_t__ ci_otg_is_fsm_mode (struct ci_hdrc*) ;
 int destroy_workqueue (scalar_t__) ;
 int flush_workqueue (scalar_t__) ;
 int hw_write_otgsc (struct ci_hdrc*,int,int) ;

void ci_hdrc_otg_destroy(struct ci_hdrc *ci)
{
 if (ci->wq) {
  flush_workqueue(ci->wq);
  destroy_workqueue(ci->wq);
 }

 hw_write_otgsc(ci, OTGSC_INT_EN_BITS | OTGSC_INT_STATUS_BITS,
      OTGSC_INT_STATUS_BITS);
 if (ci_otg_is_fsm_mode(ci))
  ci_hdrc_otg_fsm_remove(ci);
}
