
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cg_item; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_state; scalar_t__ tg_pt_gp_trans_delay_msecs; int tg_pt_gp_transition_mutex; int tg_pt_gp_id; TYPE_1__ tg_pt_gp_group; scalar_t__ tg_pt_gp_write_metadata; int tg_pt_gp_alua_access_status; } ;


 int ALUA_ACCESS_STATE_TRANSITION ;
 int ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG ;
 int ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA ;
 int EAGAIN ;
 int config_item_name (int *) ;
 int core_alua_dump_state (int) ;
 int core_alua_queue_state_change_ua (struct t10_alua_tg_pt_gp*) ;
 int core_alua_update_tpg_primary_metadata (struct t10_alua_tg_pt_gp*) ;
 int msleep_interruptible (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int core_alua_do_transition_tg_pt(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 int new_state,
 int explicit)
{
 int prev_state;

 mutex_lock(&tg_pt_gp->tg_pt_gp_transition_mutex);

 if (tg_pt_gp->tg_pt_gp_alua_access_state == new_state) {
  mutex_unlock(&tg_pt_gp->tg_pt_gp_transition_mutex);
  return 0;
 }

 if (explicit && new_state == ALUA_ACCESS_STATE_TRANSITION) {
  mutex_unlock(&tg_pt_gp->tg_pt_gp_transition_mutex);
  return -EAGAIN;
 }





 prev_state = tg_pt_gp->tg_pt_gp_alua_access_state;
 tg_pt_gp->tg_pt_gp_alua_access_state = ALUA_ACCESS_STATE_TRANSITION;
 tg_pt_gp->tg_pt_gp_alua_access_status = (explicit) ?
    ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG :
    ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA;

 core_alua_queue_state_change_ua(tg_pt_gp);

 if (new_state == ALUA_ACCESS_STATE_TRANSITION) {
  mutex_unlock(&tg_pt_gp->tg_pt_gp_transition_mutex);
  return 0;
 }




 if (tg_pt_gp->tg_pt_gp_trans_delay_msecs != 0)
  msleep_interruptible(tg_pt_gp->tg_pt_gp_trans_delay_msecs);




 tg_pt_gp->tg_pt_gp_alua_access_state = new_state;
 if (tg_pt_gp->tg_pt_gp_write_metadata) {
  core_alua_update_tpg_primary_metadata(tg_pt_gp);
 }

 pr_debug("Successful %s ALUA transition TG PT Group: %s ID: %hu"
  " from primary access state %s to %s\n", (explicit) ? "explicit" :
  "implicit", config_item_name(&tg_pt_gp->tg_pt_gp_group.cg_item),
  tg_pt_gp->tg_pt_gp_id,
  core_alua_dump_state(prev_state),
  core_alua_dump_state(new_state));

 core_alua_queue_state_change_ua(tg_pt_gp);

 mutex_unlock(&tg_pt_gp->tg_pt_gp_transition_mutex);
 return 0;
}
