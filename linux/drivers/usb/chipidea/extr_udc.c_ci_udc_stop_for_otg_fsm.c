
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int a_bidl_adis_tmout; int lock; TYPE_1__* otg; int protocol; } ;
struct ci_hdrc {TYPE_2__ fsm; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ OTG_STATE_A_PERIPHERAL ;
 scalar_t__ OTG_STATE_B_PERIPHERAL ;
 scalar_t__ OTG_STATE_UNDEFINED ;
 int PROTO_UNDEF ;
 int ci_hdrc_otg_fsm_start (struct ci_hdrc*) ;
 int ci_otg_is_fsm_mode (struct ci_hdrc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ci_udc_stop_for_otg_fsm(struct ci_hdrc *ci)
{
 if (!ci_otg_is_fsm_mode(ci))
  return;

 mutex_lock(&ci->fsm.lock);
 if (ci->fsm.otg->state == OTG_STATE_A_PERIPHERAL) {
  ci->fsm.a_bidl_adis_tmout = 1;
  ci_hdrc_otg_fsm_start(ci);
 } else if (ci->fsm.otg->state == OTG_STATE_B_PERIPHERAL) {
  ci->fsm.protocol = PROTO_UNDEF;
  ci->fsm.otg->state = OTG_STATE_UNDEFINED;
 }
 mutex_unlock(&ci->fsm.lock);
}
