
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct btrfs_space_info {struct kobject kobj; struct kobject** block_group_kobjs; } ;


 int BTRFS_NR_RAID_TYPES ;
 int kobject_del (struct kobject*) ;
 int kobject_put (struct kobject*) ;

void btrfs_sysfs_remove_space_info(struct btrfs_space_info *space_info)
{
 int i;

 for (i = 0; i < BTRFS_NR_RAID_TYPES; i++) {
  struct kobject *kobj;

  kobj = space_info->block_group_kobjs[i];
  space_info->block_group_kobjs[i] = ((void*)0);
  if (kobj) {
   kobject_del(kobj);
   kobject_put(kobj);
  }
 }
 kobject_del(&space_info->kobj);
 kobject_put(&space_info->kobj);
}
