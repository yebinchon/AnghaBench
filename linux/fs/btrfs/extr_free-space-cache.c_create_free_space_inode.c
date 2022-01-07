
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct TYPE_4__ {int objectid; } ;
struct btrfs_block_group_cache {TYPE_2__ key; } ;
struct TYPE_3__ {int tree_root; } ;


 int __create_free_space_inode (int ,struct btrfs_trans_handle*,struct btrfs_path*,int ,int ) ;
 int btrfs_find_free_objectid (int ,int *) ;

int create_free_space_inode(struct btrfs_trans_handle *trans,
       struct btrfs_block_group_cache *block_group,
       struct btrfs_path *path)
{
 int ret;
 u64 ino;

 ret = btrfs_find_free_objectid(trans->fs_info->tree_root, &ino);
 if (ret < 0)
  return ret;

 return __create_free_space_inode(trans->fs_info->tree_root, trans, path,
      ino, block_group->key.objectid);
}
