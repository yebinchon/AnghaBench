
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int acl_node_mutex; } ;
struct se_node_acl {int acl_kref; } ;


 struct se_node_acl* __core_tpg_get_initiator_node_acl (struct se_portal_group*,unsigned char*) ;
 int kref_get_unless_zero (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct se_node_acl *core_tpg_get_initiator_node_acl(
 struct se_portal_group *tpg,
 unsigned char *initiatorname)
{
 struct se_node_acl *acl;
 mutex_lock(&tpg->acl_node_mutex);
 acl = __core_tpg_get_initiator_node_acl(tpg, initiatorname);
 if (acl) {
  if (!kref_get_unless_zero(&acl->acl_kref))
   acl = ((void*)0);
 }
 mutex_unlock(&tpg->acl_node_mutex);

 return acl;
}
