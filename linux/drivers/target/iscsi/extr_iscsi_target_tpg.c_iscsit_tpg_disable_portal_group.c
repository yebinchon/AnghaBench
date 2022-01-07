
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iscsi_tiqn {int tiqn_tpg_lock; int tiqn_active_tpgs; } ;
struct iscsi_portal_group {int tpgt; struct iscsi_tiqn* tpg_tiqn; int tpg_state_lock; int tpg_state; } ;
struct TYPE_2__ {struct iscsi_portal_group* discovery_tpg; } ;


 int EINVAL ;
 int EPERM ;
 int TPG_STATE_INACTIVE ;
 int iscsit_clear_tpg_np_login_threads (struct iscsi_portal_group*,int) ;
 TYPE_1__* iscsit_global ;
 scalar_t__ iscsit_release_sessions_for_tpg (struct iscsi_portal_group*,int) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsit_tpg_disable_portal_group(struct iscsi_portal_group *tpg, int force)
{
 struct iscsi_tiqn *tiqn;
 u8 old_state = tpg->tpg_state;

 spin_lock(&tpg->tpg_state_lock);
 if (tpg->tpg_state == TPG_STATE_INACTIVE) {
  pr_err("iSCSI Target Portal Group: %hu is already"
   " inactive, ignoring request.\n", tpg->tpgt);
  spin_unlock(&tpg->tpg_state_lock);
  return -EINVAL;
 }
 tpg->tpg_state = TPG_STATE_INACTIVE;
 spin_unlock(&tpg->tpg_state_lock);

 iscsit_clear_tpg_np_login_threads(tpg, 0);

 if (iscsit_release_sessions_for_tpg(tpg, force) < 0) {
  spin_lock(&tpg->tpg_state_lock);
  tpg->tpg_state = old_state;
  spin_unlock(&tpg->tpg_state_lock);
  pr_err("Unable to disable iSCSI Target Portal Group:"
   " %hu while active sessions exist, and force=0\n",
   tpg->tpgt);
  return -EPERM;
 }

 tiqn = tpg->tpg_tiqn;
 if (!tiqn || (tpg == iscsit_global->discovery_tpg))
  return 0;

 spin_lock(&tiqn->tiqn_tpg_lock);
 tiqn->tiqn_active_tpgs--;
 pr_debug("iSCSI_TPG[%hu] - Disabled iSCSI Target Portal Group\n",
   tpg->tpgt);
 spin_unlock(&tiqn->tiqn_tpg_lock);

 return 0;
}
