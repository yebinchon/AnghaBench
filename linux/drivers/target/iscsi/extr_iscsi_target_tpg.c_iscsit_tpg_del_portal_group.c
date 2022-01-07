
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsi_tiqn {int tiqn; int tiqn_tpg_lock; int tiqn_ntpgs; } ;
struct iscsi_portal_group {int tpgt; int tpg_list; int tpg_state_lock; int tpg_state; int tpg_se_tpg; int * param_list; } ;


 int EPERM ;
 int TPG_STATE_FREE ;
 int TPG_STATE_INACTIVE ;
 int core_tpg_deregister (int *) ;
 int iscsi_release_param_list (int *) ;
 scalar_t__ iscsit_release_sessions_for_tpg (struct iscsi_portal_group*,int) ;
 int kfree (struct iscsi_portal_group*) ;
 int list_del (int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsit_tpg_del_portal_group(
 struct iscsi_tiqn *tiqn,
 struct iscsi_portal_group *tpg,
 int force)
{
 u8 old_state = tpg->tpg_state;

 spin_lock(&tpg->tpg_state_lock);
 tpg->tpg_state = TPG_STATE_INACTIVE;
 spin_unlock(&tpg->tpg_state_lock);

 if (iscsit_release_sessions_for_tpg(tpg, force) < 0) {
  pr_err("Unable to delete iSCSI Target Portal Group:"
   " %hu while active sessions exist, and force=0\n",
   tpg->tpgt);
  tpg->tpg_state = old_state;
  return -EPERM;
 }

 if (tpg->param_list) {
  iscsi_release_param_list(tpg->param_list);
  tpg->param_list = ((void*)0);
 }

 core_tpg_deregister(&tpg->tpg_se_tpg);

 spin_lock(&tpg->tpg_state_lock);
 tpg->tpg_state = TPG_STATE_FREE;
 spin_unlock(&tpg->tpg_state_lock);

 spin_lock(&tiqn->tiqn_tpg_lock);
 tiqn->tiqn_ntpgs--;
 list_del(&tpg->tpg_list);
 spin_unlock(&tiqn->tiqn_tpg_lock);

 pr_debug("CORE[%s]_TPG[%hu] - Deleted iSCSI Target Portal Group\n",
   tiqn->tiqn, tpg->tpgt);

 kfree(tpg);
 return 0;
}
