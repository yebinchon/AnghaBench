
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_io_tree {int dummy; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct extent_io_tree dirty_log_pages; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int flags; } ;


 int ASSERT (int) ;
 int BTRFS_FS_LOG1_ERR ;
 int BTRFS_FS_LOG2_ERR ;
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;
 int EIO ;
 int EXTENT_DIRTY ;
 int EXTENT_NEW ;
 int __btrfs_wait_marked_extents (struct btrfs_fs_info*,struct extent_io_tree*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

int btrfs_wait_tree_log_extents(struct btrfs_root *log_root, int mark)
{
 struct btrfs_fs_info *fs_info = log_root->fs_info;
 struct extent_io_tree *dirty_pages = &log_root->dirty_log_pages;
 bool errors = 0;
 int err;

 ASSERT(log_root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID);

 err = __btrfs_wait_marked_extents(fs_info, dirty_pages);
 if ((mark & EXTENT_DIRTY) &&
     test_and_clear_bit(BTRFS_FS_LOG1_ERR, &fs_info->flags))
  errors = 1;

 if ((mark & EXTENT_NEW) &&
     test_and_clear_bit(BTRFS_FS_LOG2_ERR, &fs_info->flags))
  errors = 1;

 if (errors && !err)
  err = -EIO;
 return err;
}
