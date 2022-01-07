
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_node_acl {int dummy; } ;
struct se_lun_acl {int mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {int lun_access_ro; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 struct se_lun_acl* item_to_lun_acl (struct config_item*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sprintf (char*,char*,int) ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,int ) ;

__attribute__((used)) static ssize_t target_fabric_mappedlun_write_protect_show(
  struct config_item *item, char *page)
{
 struct se_lun_acl *lacl = item_to_lun_acl(item);
 struct se_node_acl *se_nacl = lacl->se_lun_nacl;
 struct se_dev_entry *deve;
 ssize_t len = 0;

 rcu_read_lock();
 deve = target_nacl_find_deve(se_nacl, lacl->mapped_lun);
 if (deve) {
  len = sprintf(page, "%d\n", deve->lun_access_ro);
 }
 rcu_read_unlock();

 return len;
}
