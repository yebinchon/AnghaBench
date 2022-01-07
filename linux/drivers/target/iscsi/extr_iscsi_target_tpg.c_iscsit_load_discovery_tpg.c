
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * se_tpg_tfo; } ;
struct TYPE_5__ {scalar_t__ authentication; } ;
struct iscsi_portal_group {int sid; TYPE_3__ tpg_se_tpg; int param_list; int tpg_state_lock; int tpg_state; TYPE_1__ tpg_attrib; } ;
struct iscsi_param {int dummy; } ;
struct TYPE_6__ {struct iscsi_portal_group* discovery_tpg; } ;


 int AUTHMETHOD ;
 int TPG_STATE_ACTIVE ;
 int core_tpg_deregister (TYPE_3__*) ;
 int core_tpg_register (int *,TYPE_3__*,int) ;
 scalar_t__ iscsi_create_default_params (int *) ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 int iscsi_ops ;
 int iscsi_release_param_list (int ) ;
 scalar_t__ iscsi_update_param_value (struct iscsi_param*,char*) ;
 struct iscsi_portal_group* iscsit_alloc_portal_group (int *,int) ;
 TYPE_2__* iscsit_global ;
 int iscsit_set_default_tpg_attribs (struct iscsi_portal_group*) ;
 int kfree (struct iscsi_portal_group*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsit_load_discovery_tpg(void)
{
 struct iscsi_param *param;
 struct iscsi_portal_group *tpg;
 int ret;

 tpg = iscsit_alloc_portal_group(((void*)0), 1);
 if (!tpg) {
  pr_err("Unable to allocate struct iscsi_portal_group\n");
  return -1;
 }




 tpg->tpg_se_tpg.se_tpg_tfo = &iscsi_ops;
 ret = core_tpg_register(((void*)0), &tpg->tpg_se_tpg, -1);
 if (ret < 0) {
  kfree(tpg);
  return -1;
 }

 tpg->sid = 1;
 iscsit_set_default_tpg_attribs(tpg);

 if (iscsi_create_default_params(&tpg->param_list) < 0)
  goto out;






 param = iscsi_find_param_from_key(AUTHMETHOD, tpg->param_list);
 if (!param)
  goto free_pl_out;

 if (iscsi_update_param_value(param, "CHAP,None") < 0)
  goto free_pl_out;

 tpg->tpg_attrib.authentication = 0;

 spin_lock(&tpg->tpg_state_lock);
 tpg->tpg_state = TPG_STATE_ACTIVE;
 spin_unlock(&tpg->tpg_state_lock);

 iscsit_global->discovery_tpg = tpg;
 pr_debug("CORE[0] - Allocated Discovery TPG\n");

 return 0;
free_pl_out:
 iscsi_release_param_list(tpg->param_list);
out:
 if (tpg->sid == 1)
  core_tpg_deregister(&tpg->tpg_se_tpg);
 kfree(tpg);
 return -1;
}
