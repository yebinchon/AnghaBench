
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int type; int offset; scalar_t__ objectid; } ;
struct TYPE_2__ {struct btrfs_root* quota_root; } ;


 int BTRFS_QGROUP_INFO_KEY ;
 int BTRFS_QGROUP_LIMIT_KEY ;
 int ENOENT ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;

__attribute__((used)) static int del_qgroup_item(struct btrfs_trans_handle *trans, u64 qgroupid)
{
 int ret;
 struct btrfs_root *quota_root = trans->fs_info->quota_root;
 struct btrfs_path *path;
 struct btrfs_key key;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 key.objectid = 0;
 key.type = BTRFS_QGROUP_INFO_KEY;
 key.offset = qgroupid;
 ret = btrfs_search_slot(trans, quota_root, &key, path, -1, 1);
 if (ret < 0)
  goto out;

 if (ret > 0) {
  ret = -ENOENT;
  goto out;
 }

 ret = btrfs_del_item(trans, quota_root, path);
 if (ret)
  goto out;

 btrfs_release_path(path);

 key.type = BTRFS_QGROUP_LIMIT_KEY;
 ret = btrfs_search_slot(trans, quota_root, &key, path, -1, 1);
 if (ret < 0)
  goto out;

 if (ret > 0) {
  ret = -ENOENT;
  goto out;
 }

 ret = btrfs_del_item(trans, quota_root, path);

out:
 btrfs_free_path(path);
 return ret;
}
