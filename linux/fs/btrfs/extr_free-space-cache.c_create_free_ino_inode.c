
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;


 int BTRFS_FREE_INO_OBJECTID ;
 int __create_free_space_inode (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*,int ,int ) ;

int create_free_ino_inode(struct btrfs_root *root,
     struct btrfs_trans_handle *trans,
     struct btrfs_path *path)
{
 return __create_free_space_inode(root, trans, path,
      BTRFS_FREE_INO_OBJECTID, 0);
}
