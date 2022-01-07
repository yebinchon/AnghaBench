
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_lun_acl {int mapped_lun; TYPE_2__* se_lun_nacl; } ;
struct TYPE_4__ {int initiatorname; } ;
struct TYPE_3__ {int fabric_name; int (* tpg_get_tag ) (struct se_portal_group*) ;} ;


 int kfree (struct se_lun_acl*) ;
 int pr_debug (char*,int ,int ,int ,int ,int ) ;
 int stub1 (struct se_portal_group*) ;

void core_dev_free_initiator_node_lun_acl(
 struct se_portal_group *tpg,
 struct se_lun_acl *lacl)
{
 pr_debug("%s_TPG[%hu] - Freeing ACL for %s InitiatorNode: %s"
  " Mapped LUN: %llu\n", tpg->se_tpg_tfo->fabric_name,
  tpg->se_tpg_tfo->tpg_get_tag(tpg),
  tpg->se_tpg_tfo->fabric_name,
  lacl->se_lun_nacl->initiatorname, lacl->mapped_lun);

 kfree(lacl);
}
