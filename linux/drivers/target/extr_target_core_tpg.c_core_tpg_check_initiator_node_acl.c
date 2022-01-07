
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int dynamic_node_acl; int acl_kref; } ;
struct TYPE_2__ {int (* tpg_check_demo_mode_login_only ) (struct se_portal_group*) ;int (* tpg_check_demo_mode ) (struct se_portal_group*) ;} ;


 int core_tpg_add_node_to_devs (struct se_node_acl*,struct se_portal_group*,int *) ;
 struct se_node_acl* core_tpg_get_initiator_node_acl (struct se_portal_group*,unsigned char*) ;
 int kref_get (int *) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_portal_group*) ;
 int target_add_node_acl (struct se_node_acl*) ;
 struct se_node_acl* target_alloc_node_acl (struct se_portal_group*,unsigned char*) ;

struct se_node_acl *core_tpg_check_initiator_node_acl(
 struct se_portal_group *tpg,
 unsigned char *initiatorname)
{
 struct se_node_acl *acl;

 acl = core_tpg_get_initiator_node_acl(tpg, initiatorname);
 if (acl)
  return acl;

 if (!tpg->se_tpg_tfo->tpg_check_demo_mode(tpg))
  return ((void*)0);

 acl = target_alloc_node_acl(tpg, initiatorname);
 if (!acl)
  return ((void*)0);
 kref_get(&acl->acl_kref);
 acl->dynamic_node_acl = 1;






 if ((tpg->se_tpg_tfo->tpg_check_demo_mode_login_only == ((void*)0)) ||
     (tpg->se_tpg_tfo->tpg_check_demo_mode_login_only(tpg) != 1))
  core_tpg_add_node_to_devs(acl, tpg, ((void*)0));

 target_add_node_acl(acl);
 return acl;
}
