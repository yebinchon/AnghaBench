
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {int acl_node_mutex; TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {scalar_t__ dynamic_node_acl; } ;
struct TYPE_2__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int fabric_name; } ;


 int EEXIST ;
 int ENOMEM ;
 struct se_node_acl* ERR_PTR (int ) ;
 struct se_node_acl* __core_tpg_get_initiator_node_acl (struct se_portal_group*,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,char const*) ;
 int pr_err (char*,int ,char const*,int ) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_portal_group*) ;
 int target_add_node_acl (struct se_node_acl*) ;
 struct se_node_acl* target_alloc_node_acl (struct se_portal_group*,char const*) ;

struct se_node_acl *core_tpg_add_initiator_node_acl(
 struct se_portal_group *tpg,
 const char *initiatorname)
{
 struct se_node_acl *acl;

 mutex_lock(&tpg->acl_node_mutex);
 acl = __core_tpg_get_initiator_node_acl(tpg, initiatorname);
 if (acl) {
  if (acl->dynamic_node_acl) {
   acl->dynamic_node_acl = 0;
   pr_debug("%s_TPG[%u] - Replacing dynamic ACL"
    " for %s\n", tpg->se_tpg_tfo->fabric_name,
    tpg->se_tpg_tfo->tpg_get_tag(tpg), initiatorname);
   mutex_unlock(&tpg->acl_node_mutex);
   return acl;
  }

  pr_err("ACL entry for %s Initiator"
   " Node %s already exists for TPG %u, ignoring"
   " request.\n", tpg->se_tpg_tfo->fabric_name,
   initiatorname, tpg->se_tpg_tfo->tpg_get_tag(tpg));
  mutex_unlock(&tpg->acl_node_mutex);
  return ERR_PTR(-EEXIST);
 }
 mutex_unlock(&tpg->acl_node_mutex);

 acl = target_alloc_node_acl(tpg, initiatorname);
 if (!acl)
  return ERR_PTR(-ENOMEM);

 target_add_node_acl(acl);
 return acl;
}
