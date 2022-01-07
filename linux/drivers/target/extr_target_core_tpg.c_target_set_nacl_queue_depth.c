
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int queue_depth; int initiatorname; } ;
struct TYPE_2__ {int fabric_name; } ;


 int pr_warn (char*,int ,int ) ;

__attribute__((used)) static void
target_set_nacl_queue_depth(struct se_portal_group *tpg,
       struct se_node_acl *acl, u32 queue_depth)
{
 acl->queue_depth = queue_depth;

 if (!acl->queue_depth) {
  pr_warn("Queue depth for %s Initiator Node: %s is 0,"
   "defaulting to 1.\n", tpg->se_tpg_tfo->fabric_name,
   acl->initiatorname);
  acl->queue_depth = 1;
 }
}
