
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_trans_handle {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct TYPE_2__ {int offset; int objectid; } ;
struct btrfs_block_group_cache {TYPE_1__ key; scalar_t__ needs_free_space; } ;


 int __add_to_free_space_tree (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int ,int ) ;
 int add_new_free_space_info (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ;

__attribute__((used)) static int __add_block_group_free_space(struct btrfs_trans_handle *trans,
     struct btrfs_block_group_cache *block_group,
     struct btrfs_path *path)
{
 int ret;

 block_group->needs_free_space = 0;

 ret = add_new_free_space_info(trans, block_group, path);
 if (ret)
  return ret;

 return __add_to_free_space_tree(trans, block_group, path,
     block_group->key.objectid,
     block_group->key.offset);
}
