
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_space_info {int flags; int list; int priority_tickets; int tickets; int ro_bgs; int wait; int force_alloc; int lock; int groups_sem; int * block_groups; int total_bytes_pinned; } ;
struct btrfs_fs_info {struct btrfs_space_info* data_sinfo; int space_info; } ;


 int BTRFS_BLOCK_GROUP_DATA ;
 int BTRFS_BLOCK_GROUP_TYPE_MASK ;
 int BTRFS_NR_RAID_TYPES ;
 int CHUNK_ALLOC_NO_FORCE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int btrfs_sysfs_add_space_info_type (struct btrfs_fs_info*,struct btrfs_space_info*) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct btrfs_space_info*) ;
 struct btrfs_space_info* kzalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int percpu_counter_init (int *,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int create_space_info(struct btrfs_fs_info *info, u64 flags)
{

 struct btrfs_space_info *space_info;
 int i;
 int ret;

 space_info = kzalloc(sizeof(*space_info), GFP_NOFS);
 if (!space_info)
  return -ENOMEM;

 ret = percpu_counter_init(&space_info->total_bytes_pinned, 0,
     GFP_KERNEL);
 if (ret) {
  kfree(space_info);
  return ret;
 }

 for (i = 0; i < BTRFS_NR_RAID_TYPES; i++)
  INIT_LIST_HEAD(&space_info->block_groups[i]);
 init_rwsem(&space_info->groups_sem);
 spin_lock_init(&space_info->lock);
 space_info->flags = flags & BTRFS_BLOCK_GROUP_TYPE_MASK;
 space_info->force_alloc = CHUNK_ALLOC_NO_FORCE;
 init_waitqueue_head(&space_info->wait);
 INIT_LIST_HEAD(&space_info->ro_bgs);
 INIT_LIST_HEAD(&space_info->tickets);
 INIT_LIST_HEAD(&space_info->priority_tickets);

 ret = btrfs_sysfs_add_space_info_type(info, space_info);
 if (ret)
  return ret;

 list_add_rcu(&space_info->list, &info->space_info);
 if (flags & BTRFS_BLOCK_GROUP_DATA)
  info->data_sinfo = space_info;

 return ret;
}
