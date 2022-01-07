
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_kobject {int kobj; int flags; } ;
struct btrfs_space_info {int ** block_group_kobjs; int kobj; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int flags; struct btrfs_fs_info* fs_info; struct btrfs_space_info* space_info; } ;


 int GFP_NOFS ;
 int btrfs_bg_flags_to_raid_index (int ) ;
 int btrfs_bg_type_to_raid_name (int ) ;
 int btrfs_raid_ktype ;
 int btrfs_warn (struct btrfs_fs_info*,char*) ;
 int kobject_add (int *,int *,char*,int ) ;
 int kobject_init (int *,int *) ;
 int kobject_put (int *) ;
 struct raid_kobject* kzalloc (int,int ) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;

void btrfs_sysfs_add_block_group_type(struct btrfs_block_group_cache *cache)
{
 struct btrfs_fs_info *fs_info = cache->fs_info;
 struct btrfs_space_info *space_info = cache->space_info;
 struct raid_kobject *rkobj;
 const int index = btrfs_bg_flags_to_raid_index(cache->flags);
 unsigned int nofs_flag;
 int ret;
 nofs_flag = memalloc_nofs_save();

 rkobj = kzalloc(sizeof(*rkobj), GFP_NOFS);
 if (!rkobj) {
  memalloc_nofs_restore(nofs_flag);
  btrfs_warn(cache->fs_info,
    "couldn't alloc memory for raid level kobject");
  return;
 }

 rkobj->flags = cache->flags;
 kobject_init(&rkobj->kobj, &btrfs_raid_ktype);
 ret = kobject_add(&rkobj->kobj, &space_info->kobj, "%s",
     btrfs_bg_type_to_raid_name(rkobj->flags));
 memalloc_nofs_restore(nofs_flag);
 if (ret) {
  kobject_put(&rkobj->kobj);
  btrfs_warn(fs_info,
   "failed to add kobject for block cache, ignoring");
  return;
 }

 space_info->block_group_kobjs[index] = &rkobj->kobj;
}
