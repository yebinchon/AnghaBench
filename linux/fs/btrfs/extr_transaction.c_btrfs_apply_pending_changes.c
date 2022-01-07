
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int mount_opt; int pending_changes; } ;


 int BTRFS_PENDING_CLEAR_INODE_MAP_CACHE ;
 int BTRFS_PENDING_COMMIT ;
 int BTRFS_PENDING_SET_INODE_MAP_CACHE ;
 int INODE_MAP_CACHE ;
 int btrfs_clear_opt (int ,int ) ;
 int btrfs_debug (struct btrfs_fs_info*,char*) ;
 int btrfs_set_opt (int ,int ) ;
 int btrfs_warn (struct btrfs_fs_info*,char*,unsigned long) ;
 unsigned long xchg (int *,int ) ;

void btrfs_apply_pending_changes(struct btrfs_fs_info *fs_info)
{
 unsigned long prev;
 unsigned long bit;

 prev = xchg(&fs_info->pending_changes, 0);
 if (!prev)
  return;

 bit = 1 << BTRFS_PENDING_SET_INODE_MAP_CACHE;
 if (prev & bit)
  btrfs_set_opt(fs_info->mount_opt, INODE_MAP_CACHE);
 prev &= ~bit;

 bit = 1 << BTRFS_PENDING_CLEAR_INODE_MAP_CACHE;
 if (prev & bit)
  btrfs_clear_opt(fs_info->mount_opt, INODE_MAP_CACHE);
 prev &= ~bit;

 bit = 1 << BTRFS_PENDING_COMMIT;
 if (prev & bit)
  btrfs_debug(fs_info, "pending commit done");
 prev &= ~bit;

 if (prev)
  btrfs_warn(fs_info,
   "unknown pending changes left 0x%lx, ignoring", prev);
}
