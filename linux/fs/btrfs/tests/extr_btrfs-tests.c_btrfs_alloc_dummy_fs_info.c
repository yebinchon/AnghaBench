
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {int fs_state; int * freed_extents; int * pinned_extents; int fs_roots_radix; int buffer_radix; int tree_mod_seq_list; int dead_roots; int dirty_qgroups; int tree_mod_seq; int * qgroup_ulist; int qgroup_tree; int * running_transaction; int tree_mod_log_lock; int qgroup_rescan_lock; int qgroup_ioctl_lock; int tree_mod_seq_lock; int fs_roots_radix_lock; int super_lock; int qgroup_lock; int buffer_lock; struct btrfs_fs_info* super_copy; struct btrfs_fs_info* fs_devices; int subvol_srcu; void* sectorsize; void* nodesize; } ;
struct btrfs_fs_devices {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mnt_sb; } ;
struct TYPE_3__ {struct btrfs_fs_info* s_fs_info; } ;


 int BTRFS_FS_STATE_DUMMY_FS_INFO ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int IO_TREE_FS_INFO_FREED_EXTENTS0 ;
 int IO_TREE_FS_INFO_FREED_EXTENTS1 ;
 int RB_ROOT ;
 int atomic64_set (int *,int ) ;
 int extent_io_tree_init (struct btrfs_fs_info*,int *,int ,int *) ;
 scalar_t__ init_srcu_struct (int *) ;
 int kfree (struct btrfs_fs_info*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rwlock_init (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 TYPE_2__* test_mnt ;

struct btrfs_fs_info *btrfs_alloc_dummy_fs_info(u32 nodesize, u32 sectorsize)
{
 struct btrfs_fs_info *fs_info = kzalloc(sizeof(struct btrfs_fs_info),
      GFP_KERNEL);

 if (!fs_info)
  return fs_info;
 fs_info->fs_devices = kzalloc(sizeof(struct btrfs_fs_devices),
          GFP_KERNEL);
 if (!fs_info->fs_devices) {
  kfree(fs_info);
  return ((void*)0);
 }
 fs_info->super_copy = kzalloc(sizeof(struct btrfs_super_block),
          GFP_KERNEL);
 if (!fs_info->super_copy) {
  kfree(fs_info->fs_devices);
  kfree(fs_info);
  return ((void*)0);
 }

 fs_info->nodesize = nodesize;
 fs_info->sectorsize = sectorsize;

 if (init_srcu_struct(&fs_info->subvol_srcu)) {
  kfree(fs_info->fs_devices);
  kfree(fs_info->super_copy);
  kfree(fs_info);
  return ((void*)0);
 }

 spin_lock_init(&fs_info->buffer_lock);
 spin_lock_init(&fs_info->qgroup_lock);
 spin_lock_init(&fs_info->super_lock);
 spin_lock_init(&fs_info->fs_roots_radix_lock);
 spin_lock_init(&fs_info->tree_mod_seq_lock);
 mutex_init(&fs_info->qgroup_ioctl_lock);
 mutex_init(&fs_info->qgroup_rescan_lock);
 rwlock_init(&fs_info->tree_mod_log_lock);
 fs_info->running_transaction = ((void*)0);
 fs_info->qgroup_tree = RB_ROOT;
 fs_info->qgroup_ulist = ((void*)0);
 atomic64_set(&fs_info->tree_mod_seq, 0);
 INIT_LIST_HEAD(&fs_info->dirty_qgroups);
 INIT_LIST_HEAD(&fs_info->dead_roots);
 INIT_LIST_HEAD(&fs_info->tree_mod_seq_list);
 INIT_RADIX_TREE(&fs_info->buffer_radix, GFP_ATOMIC);
 INIT_RADIX_TREE(&fs_info->fs_roots_radix, GFP_ATOMIC);
 extent_io_tree_init(fs_info, &fs_info->freed_extents[0],
       IO_TREE_FS_INFO_FREED_EXTENTS0, ((void*)0));
 extent_io_tree_init(fs_info, &fs_info->freed_extents[1],
       IO_TREE_FS_INFO_FREED_EXTENTS1, ((void*)0));
 fs_info->pinned_extents = &fs_info->freed_extents[0];
 set_bit(BTRFS_FS_STATE_DUMMY_FS_INFO, &fs_info->fs_state);

 test_mnt->mnt_sb->s_fs_info = fs_info;

 return fs_info;
}
