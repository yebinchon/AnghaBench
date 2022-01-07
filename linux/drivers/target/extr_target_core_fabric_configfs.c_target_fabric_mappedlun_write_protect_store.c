
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {int initiatorname; struct se_portal_group* se_tpg; } ;
struct se_lun_acl {int mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int fabric_name; } ;


 int EINVAL ;
 int core_update_device_list_access (int ,unsigned long,struct se_node_acl*) ;
 struct se_lun_acl* item_to_lun_acl (struct config_item*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int pr_debug (char*,int ,int ,int ,char*) ;

__attribute__((used)) static ssize_t target_fabric_mappedlun_write_protect_store(
  struct config_item *item, const char *page, size_t count)
{
 struct se_lun_acl *lacl = item_to_lun_acl(item);
 struct se_node_acl *se_nacl = lacl->se_lun_nacl;
 struct se_portal_group *se_tpg = se_nacl->se_tpg;
 unsigned long wp;
 int ret;

 ret = kstrtoul(page, 0, &wp);
 if (ret)
  return ret;

 if ((wp != 1) && (wp != 0))
  return -EINVAL;


 core_update_device_list_access(lacl->mapped_lun, wp, lacl->se_lun_nacl);

 pr_debug("%s_ConfigFS: Changed Initiator ACL: %s"
  " Mapped LUN: %llu Write Protect bit to %s\n",
  se_tpg->se_tpg_tfo->fabric_name,
  se_nacl->initiatorname, lacl->mapped_lun, (wp) ? "ON" : "OFF");

 return count;

}
