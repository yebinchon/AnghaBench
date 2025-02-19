
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_node_acl {struct se_portal_group* se_tpg; } ;
struct se_lun_acl {int mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* tpg_get_tag ) (struct se_portal_group*) ;} ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct se_lun_acl* iport_to_lacl (struct config_item*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,int ,char*,int) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_portal_group*) ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,int ) ;

__attribute__((used)) static ssize_t target_stat_iport_port_show(struct config_item *item,
  char *page)
{
 struct se_lun_acl *lacl = iport_to_lacl(item);
 struct se_node_acl *nacl = lacl->se_lun_nacl;
 struct se_dev_entry *deve;
 struct se_portal_group *tpg;
 ssize_t ret;

 rcu_read_lock();
 deve = target_nacl_find_deve(nacl, lacl->mapped_lun);
 if (!deve) {
  rcu_read_unlock();
  return -ENODEV;
 }
 tpg = nacl->se_tpg;

 ret = snprintf(page, PAGE_SIZE, "%u\n", tpg->se_tpg_tfo->tpg_get_tag(tpg));
 rcu_read_unlock();
 return ret;
}
