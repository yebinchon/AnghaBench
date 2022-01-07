
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_node_acl {int dummy; } ;
struct se_lun_acl {int mapped_lun; struct se_node_acl* se_lun_nacl; } ;
struct se_dev_entry {scalar_t__ creation_time; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int HZ ;
 int INITIAL_JIFFIES ;
 int PAGE_SIZE ;
 struct se_lun_acl* auth_to_lacl (struct config_item*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,int ,char*,int) ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,int ) ;

__attribute__((used)) static ssize_t target_stat_auth_creation_time_show(struct config_item *item,
  char *page)
{
 struct se_lun_acl *lacl = auth_to_lacl(item);
 struct se_node_acl *nacl = lacl->se_lun_nacl;
 struct se_dev_entry *deve;
 ssize_t ret;

 rcu_read_lock();
 deve = target_nacl_find_deve(nacl, lacl->mapped_lun);
 if (!deve) {
  rcu_read_unlock();
  return -ENODEV;
 }

 ret = snprintf(page, PAGE_SIZE, "%u\n", (u32)(((u32)deve->creation_time -
    INITIAL_JIFFIES) * 100 / HZ));
 rcu_read_unlock();
 return ret;
}
