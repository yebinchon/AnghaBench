
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_io_tree {int dummy; } ;
struct btrfs_fs_info {int flags; } ;


 int BTRFS_FS_BTREE_ERR ;
 int EIO ;
 int __btrfs_wait_marked_extents (struct btrfs_fs_info*,struct extent_io_tree*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

int btrfs_wait_extents(struct btrfs_fs_info *fs_info,
         struct extent_io_tree *dirty_pages)
{
 bool errors = 0;
 int err;

 err = __btrfs_wait_marked_extents(fs_info, dirty_pages);
 if (test_and_clear_bit(BTRFS_FS_BTREE_ERR, &fs_info->flags))
  errors = 1;

 if (errors && !err)
  err = -EIO;
 return err;
}
