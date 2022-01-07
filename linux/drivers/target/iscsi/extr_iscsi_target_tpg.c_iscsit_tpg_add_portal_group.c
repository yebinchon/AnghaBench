
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_tiqn {int tiqn_tpg_lock; int tiqn; int tiqn_ntpgs; int tiqn_tpg_list; } ;
struct TYPE_2__ {struct iscsi_portal_group* tpg; } ;
struct iscsi_portal_group {scalar_t__ tpg_state; int * param_list; int tpgt; int tpg_list; int tpg_state_lock; TYPE_1__ tpg_attrib; } ;


 int EEXIST ;
 int ENOMEM ;
 scalar_t__ TPG_STATE_FREE ;
 scalar_t__ TPG_STATE_INACTIVE ;
 scalar_t__ iscsi_create_default_params (int **) ;
 int iscsi_release_param_list (int *) ;
 int iscsit_set_default_tpg_attribs (struct iscsi_portal_group*) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsit_tpg_add_portal_group(struct iscsi_tiqn *tiqn, struct iscsi_portal_group *tpg)
{
 if (tpg->tpg_state != TPG_STATE_FREE) {
  pr_err("Unable to add iSCSI Target Portal Group: %d"
   " while not in TPG_STATE_FREE state.\n", tpg->tpgt);
  return -EEXIST;
 }
 iscsit_set_default_tpg_attribs(tpg);

 if (iscsi_create_default_params(&tpg->param_list) < 0)
  goto err_out;

 tpg->tpg_attrib.tpg = tpg;

 spin_lock(&tpg->tpg_state_lock);
 tpg->tpg_state = TPG_STATE_INACTIVE;
 spin_unlock(&tpg->tpg_state_lock);

 spin_lock(&tiqn->tiqn_tpg_lock);
 list_add_tail(&tpg->tpg_list, &tiqn->tiqn_tpg_list);
 tiqn->tiqn_ntpgs++;
 pr_debug("CORE[%s]_TPG[%hu] - Added iSCSI Target Portal Group\n",
   tiqn->tiqn, tpg->tpgt);
 spin_unlock(&tiqn->tiqn_tpg_lock);

 return 0;
err_out:
 if (tpg->param_list) {
  iscsi_release_param_list(tpg->param_list);
  tpg->param_list = ((void*)0);
 }
 return -ENOMEM;
}
