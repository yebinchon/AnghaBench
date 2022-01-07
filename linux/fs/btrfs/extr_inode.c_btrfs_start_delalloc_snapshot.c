
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int fs_state; } ;


 int BTRFS_FS_STATE_ERROR ;
 int EROFS ;
 int start_delalloc_inodes (struct btrfs_root*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_start_delalloc_snapshot(struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 int ret;

 if (test_bit(BTRFS_FS_STATE_ERROR, &fs_info->fs_state))
  return -EROFS;

 ret = start_delalloc_inodes(root, -1, 1);
 if (ret > 0)
  ret = 0;
 return ret;
}
