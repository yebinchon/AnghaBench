
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tiqn {int tiqn_tpg_lock; int tiqn_active_tpgs; } ;
struct TYPE_2__ {scalar_t__ authentication; } ;
struct iscsi_portal_group {scalar_t__ tpg_state; int tpgt; int tpg_state_lock; TYPE_1__ tpg_attrib; int param_list; struct iscsi_tiqn* tpg_tiqn; } ;
struct iscsi_param {int value; } ;


 int AUTHMETHOD ;
 int CHAP ;
 int EINVAL ;
 int NONE ;
 scalar_t__ TPG_STATE_ACTIVE ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 int iscsi_update_param_value (struct iscsi_param*,int ) ;
 int iscsit_ta_authentication (struct iscsi_portal_group*,int) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strcmp (int ,int ) ;

int iscsit_tpg_enable_portal_group(struct iscsi_portal_group *tpg)
{
 struct iscsi_param *param;
 struct iscsi_tiqn *tiqn = tpg->tpg_tiqn;
 int ret;

 if (tpg->tpg_state == TPG_STATE_ACTIVE) {
  pr_err("iSCSI target portal group: %hu is already"
   " active, ignoring request.\n", tpg->tpgt);
  return -EINVAL;
 }





 param = iscsi_find_param_from_key(AUTHMETHOD, tpg->param_list);
 if (!param)
  return -EINVAL;

 if (tpg->tpg_attrib.authentication) {
  if (!strcmp(param->value, NONE)) {
   ret = iscsi_update_param_value(param, CHAP);
   if (ret)
    goto err;
  }

  ret = iscsit_ta_authentication(tpg, 1);
  if (ret < 0)
   goto err;
 }

 spin_lock(&tpg->tpg_state_lock);
 tpg->tpg_state = TPG_STATE_ACTIVE;
 spin_unlock(&tpg->tpg_state_lock);

 spin_lock(&tiqn->tiqn_tpg_lock);
 tiqn->tiqn_active_tpgs++;
 pr_debug("iSCSI_TPG[%hu] - Enabled iSCSI Target Portal Group\n",
   tpg->tpgt);
 spin_unlock(&tiqn->tiqn_tpg_lock);

 return 0;

err:
 return ret;
}
