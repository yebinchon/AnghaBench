
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; int queue_depth; struct se_portal_group* se_tpg; } ;
struct TYPE_2__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int fabric_name; } ;


 int pr_debug (char*,int ,int ,int ,int ) ;
 int stub1 (struct se_portal_group*) ;
 int target_set_nacl_queue_depth (struct se_portal_group*,struct se_node_acl*,int ) ;
 int target_shutdown_sessions (struct se_node_acl*) ;

int core_tpg_set_initiator_node_queue_depth(
 struct se_node_acl *acl,
 u32 queue_depth)
{
 struct se_portal_group *tpg = acl->se_tpg;






 if (acl->queue_depth == queue_depth)
  return 0;





 target_set_nacl_queue_depth(tpg, acl, queue_depth);




 target_shutdown_sessions(acl);

 pr_debug("Successfully changed queue depth to: %d for Initiator"
  " Node: %s on %s Target Portal Group: %u\n", acl->queue_depth,
  acl->initiatorname, tpg->se_tpg_tfo->fabric_name,
  tpg->se_tpg_tfo->tpg_get_tag(tpg));

 return 0;
}
