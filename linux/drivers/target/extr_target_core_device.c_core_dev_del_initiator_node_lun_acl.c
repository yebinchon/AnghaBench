
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; int lun_entry_mutex; } ;
struct se_lun_acl {int mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_lun {int unpacked_lun; struct se_portal_group* lun_tpg; } ;
struct se_dev_entry {int dummy; } ;
struct TYPE_2__ {int (* tpg_get_tag ) (struct se_portal_group*) ;int fabric_name; } ;


 int EINVAL ;
 int core_disable_device_list_for_node (struct se_lun*,struct se_dev_entry*,struct se_node_acl*,struct se_portal_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,int ,int ,int ) ;
 int stub1 (struct se_portal_group*) ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,int ) ;

int core_dev_del_initiator_node_lun_acl(
 struct se_lun *lun,
 struct se_lun_acl *lacl)
{
 struct se_portal_group *tpg = lun->lun_tpg;
 struct se_node_acl *nacl;
 struct se_dev_entry *deve;

 nacl = lacl->se_lun_nacl;
 if (!nacl)
  return -EINVAL;

 mutex_lock(&nacl->lun_entry_mutex);
 deve = target_nacl_find_deve(nacl, lacl->mapped_lun);
 if (deve)
  core_disable_device_list_for_node(lun, deve, nacl, tpg);
 mutex_unlock(&nacl->lun_entry_mutex);

 pr_debug("%s_TPG[%hu]_LUN[%llu] - Removed ACL for"
  " InitiatorNode: %s Mapped LUN: %llu\n",
  tpg->se_tpg_tfo->fabric_name,
  tpg->se_tpg_tfo->tpg_get_tag(tpg), lun->unpacked_lun,
  nacl->initiatorname, lacl->mapped_lun);

 return 0;
}
