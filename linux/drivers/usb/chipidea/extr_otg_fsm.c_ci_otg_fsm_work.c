
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* otg; scalar_t__ power_up; scalar_t__ b_sess_vld; scalar_t__ id; } ;
struct ci_hdrc {int id_event; int dev; TYPE_2__ fsm; int driver; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int OP_PORTSC ;
 int OTGSC_DPIE ;
 int OTGSC_DPIS ;
 scalar_t__ OTG_STATE_A_HOST ;
 scalar_t__ OTG_STATE_A_IDLE ;
 scalar_t__ OTG_STATE_B_IDLE ;
 int PORTSC_PP ;
 int PORTSC_W1C_BITS ;
 int ci_otg_queue_work (struct ci_hdrc*) ;
 int hw_write (struct ci_hdrc*,int ,int,int ) ;
 int hw_write_otgsc (struct ci_hdrc*,int ,int ) ;
 scalar_t__ otg_statemachine (TYPE_2__*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_sync (int ) ;

int ci_otg_fsm_work(struct ci_hdrc *ci)
{




 if (ci->fsm.id && !(ci->driver) &&
  ci->fsm.otg->state < OTG_STATE_A_IDLE)
  return 0;

 pm_runtime_get_sync(ci->dev);
 if (otg_statemachine(&ci->fsm)) {
  if (ci->fsm.otg->state == OTG_STATE_A_IDLE) {
   if ((ci->fsm.id) || (ci->id_event) ||
      (ci->fsm.power_up)) {
    ci_otg_queue_work(ci);
   } else {

    hw_write(ci, OP_PORTSC, PORTSC_W1C_BITS |
        PORTSC_PP, 0);
    hw_write_otgsc(ci, OTGSC_DPIS, OTGSC_DPIS);
    hw_write_otgsc(ci, OTGSC_DPIE, OTGSC_DPIE);
   }
   if (ci->id_event)
    ci->id_event = 0;
  } else if (ci->fsm.otg->state == OTG_STATE_B_IDLE) {
   if (ci->fsm.b_sess_vld) {
    ci->fsm.power_up = 0;




    ci_otg_queue_work(ci);
   }
  } else if (ci->fsm.otg->state == OTG_STATE_A_HOST) {
   pm_runtime_mark_last_busy(ci->dev);
   pm_runtime_put_autosuspend(ci->dev);
   return 0;
  }
 }
 pm_runtime_put_sync(ci->dev);
 return 0;
}
