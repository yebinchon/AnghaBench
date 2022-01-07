
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; int acl_node_mutex; } ;
struct se_node_acl {int initiatorname; int queue_depth; int acl_free_comp; int acl_list; scalar_t__ dynamic_node_acl; struct se_portal_group* se_tpg; } ;
struct TYPE_2__ {int fabric_name; int (* tpg_get_tag ) (struct se_portal_group*) ;} ;


 int core_free_device_list_for_node (struct se_node_acl*,struct se_portal_group*) ;
 int core_tpg_wait_for_nacl_pr_ref (struct se_node_acl*) ;
 int kfree (struct se_node_acl*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,int ,int ,int ) ;
 int stub1 (struct se_portal_group*) ;
 int target_put_nacl (struct se_node_acl*) ;
 int target_shutdown_sessions (struct se_node_acl*) ;
 int wait_for_completion (int *) ;

void core_tpg_del_initiator_node_acl(struct se_node_acl *acl)
{
 struct se_portal_group *tpg = acl->se_tpg;

 mutex_lock(&tpg->acl_node_mutex);
 if (acl->dynamic_node_acl)
  acl->dynamic_node_acl = 0;
 list_del_init(&acl->acl_list);
 mutex_unlock(&tpg->acl_node_mutex);

 target_shutdown_sessions(acl);

 target_put_nacl(acl);




 wait_for_completion(&acl->acl_free_comp);

 core_tpg_wait_for_nacl_pr_ref(acl);
 core_free_device_list_for_node(acl, tpg);

 pr_debug("%s_TPG[%hu] - Deleted ACL with TCQ Depth: %d for %s"
  " Initiator Node: %s\n", tpg->se_tpg_tfo->fabric_name,
  tpg->se_tpg_tfo->tpg_get_tag(tpg), acl->queue_depth,
  tpg->se_tpg_tfo->fabric_name, acl->initiatorname);

 kfree(acl);
}
