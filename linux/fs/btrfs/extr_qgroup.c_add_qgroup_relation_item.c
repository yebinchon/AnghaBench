
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * nodes; } ;
struct btrfs_key {void* offset; int type; void* objectid; } ;
struct TYPE_2__ {struct btrfs_root* quota_root; } ;


 int BTRFS_QGROUP_RELATION_KEY ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_insert_empty_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int ) ;
 int btrfs_mark_buffer_dirty (int ) ;

__attribute__((used)) static int add_qgroup_relation_item(struct btrfs_trans_handle *trans, u64 src,
        u64 dst)
{
 int ret;
 struct btrfs_root *quota_root = trans->fs_info->quota_root;
 struct btrfs_path *path;
 struct btrfs_key key;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 key.objectid = src;
 key.type = BTRFS_QGROUP_RELATION_KEY;
 key.offset = dst;

 ret = btrfs_insert_empty_item(trans, quota_root, path, &key, 0);

 btrfs_mark_buffer_dirty(path->nodes[0]);

 btrfs_free_path(path);
 return ret;
}
