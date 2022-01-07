
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_node_acl {int lun_entry_mutex; } ;
struct se_dev_entry {int lun_access_ro; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct se_dev_entry* target_nacl_find_deve (struct se_node_acl*,int ) ;

void core_update_device_list_access(
 u64 mapped_lun,
 bool lun_access_ro,
 struct se_node_acl *nacl)
{
 struct se_dev_entry *deve;

 mutex_lock(&nacl->lun_entry_mutex);
 deve = target_nacl_find_deve(nacl, mapped_lun);
 if (deve)
  deve->lun_access_ro = lun_access_ro;
 mutex_unlock(&nacl->lun_entry_mutex);
}
