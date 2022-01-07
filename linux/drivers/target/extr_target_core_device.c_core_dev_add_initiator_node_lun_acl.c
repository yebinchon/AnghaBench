
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; } ;
struct se_lun_acl {int mapped_lun; struct se_lun* se_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_lun {int unpacked_lun; scalar_t__ lun_access_ro; int lun_se_dev; } ;
struct se_device {int dummy; } ;
struct TYPE_2__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int fabric_name; } ;


 int EINVAL ;
 scalar_t__ core_enable_device_list_for_node (struct se_lun*,struct se_lun_acl*,int ,int,struct se_node_acl*,struct se_portal_group*) ;
 int core_scsi3_check_aptpl_registration (struct se_device*,struct se_portal_group*,struct se_lun*,struct se_node_acl*,int ) ;
 int pr_debug (char*,int ,int ,int ,int ,char*,int ) ;
 struct se_device* rcu_dereference_raw (int ) ;
 int stub1 (struct se_portal_group*) ;

int core_dev_add_initiator_node_lun_acl(
 struct se_portal_group *tpg,
 struct se_lun_acl *lacl,
 struct se_lun *lun,
 bool lun_access_ro)
{
 struct se_node_acl *nacl = lacl->se_lun_nacl;




 struct se_device *dev = rcu_dereference_raw(lun->lun_se_dev);

 if (!nacl)
  return -EINVAL;

 if (lun->lun_access_ro)
  lun_access_ro = 1;

 lacl->se_lun = lun;

 if (core_enable_device_list_for_node(lun, lacl, lacl->mapped_lun,
   lun_access_ro, nacl, tpg) < 0)
  return -EINVAL;

 pr_debug("%s_TPG[%hu]_LUN[%llu->%llu] - Added %s ACL for "
  " InitiatorNode: %s\n", tpg->se_tpg_tfo->fabric_name,
  tpg->se_tpg_tfo->tpg_get_tag(tpg), lun->unpacked_lun, lacl->mapped_lun,
  lun_access_ro ? "RO" : "RW",
  nacl->initiatorname);




 core_scsi3_check_aptpl_registration(dev, tpg, lun, nacl,
         lacl->mapped_lun);
 return 0;
}
