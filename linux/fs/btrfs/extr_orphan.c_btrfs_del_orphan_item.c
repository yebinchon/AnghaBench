
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int offset; int type; int objectid; } ;


 int BTRFS_ORPHAN_ITEM_KEY ;
 int BTRFS_ORPHAN_OBJECTID ;
 int ENOENT ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;

int btrfs_del_orphan_item(struct btrfs_trans_handle *trans,
     struct btrfs_root *root, u64 offset)
{
 struct btrfs_path *path;
 struct btrfs_key key;
 int ret = 0;

 key.objectid = BTRFS_ORPHAN_OBJECTID;
 key.type = BTRFS_ORPHAN_ITEM_KEY;
 key.offset = offset;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 ret = btrfs_search_slot(trans, root, &key, path, -1, 1);
 if (ret < 0)
  goto out;
 if (ret) {
  ret = -ENOENT;
  goto out;
 }

 ret = btrfs_del_item(trans, root, path);

out:
 btrfs_free_path(path);
 return ret;
}
