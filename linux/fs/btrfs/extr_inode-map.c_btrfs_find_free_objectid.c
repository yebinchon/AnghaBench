
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {scalar_t__ highest_objectid; int objectid_mutex; TYPE_1__ root_key; int fs_info; } ;


 scalar_t__ BTRFS_LAST_FREE_OBJECTID ;
 int ENOSPC ;
 int btrfs_warn (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int btrfs_find_free_objectid(struct btrfs_root *root, u64 *objectid)
{
 int ret;
 mutex_lock(&root->objectid_mutex);

 if (unlikely(root->highest_objectid >= BTRFS_LAST_FREE_OBJECTID)) {
  btrfs_warn(root->fs_info,
      "the objectid of root %llu reaches its highest value",
      root->root_key.objectid);
  ret = -ENOSPC;
  goto out;
 }

 *objectid = ++root->highest_objectid;
 ret = 0;
out:
 mutex_unlock(&root->objectid_mutex);
 return ret;
}
