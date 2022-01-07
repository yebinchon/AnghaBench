
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; int acl_node_mutex; int acl_node_list; } ;
struct se_node_acl {int initiatorname; int queue_depth; scalar_t__ dynamic_node_acl; int acl_list; struct se_portal_group* se_tpg; } ;
struct TYPE_2__ {int fabric_name; int (* tpg_get_tag ) (struct se_portal_group*) ;} ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,char*,int ,int ,int ) ;
 int stub1 (struct se_portal_group*) ;

__attribute__((used)) static void target_add_node_acl(struct se_node_acl *acl)
{
 struct se_portal_group *tpg = acl->se_tpg;

 mutex_lock(&tpg->acl_node_mutex);
 list_add_tail(&acl->acl_list, &tpg->acl_node_list);
 mutex_unlock(&tpg->acl_node_mutex);

 pr_debug("%s_TPG[%hu] - Added %s ACL with TCQ Depth: %d for %s"
  " Initiator Node: %s\n",
  tpg->se_tpg_tfo->fabric_name,
  tpg->se_tpg_tfo->tpg_get_tag(tpg),
  acl->dynamic_node_acl ? "DYNAMIC" : "",
  acl->queue_depth,
  tpg->se_tpg_tfo->fabric_name,
  acl->initiatorname);
}
