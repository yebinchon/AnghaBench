
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int root_item; } ;
struct btrfs_fs_info {int subvol_srcu; int fs_roots_radix; } ;


 int ARRAY_SIZE (struct btrfs_root**) ;
 struct btrfs_root* btrfs_grab_fs_root (struct btrfs_root*) ;
 int btrfs_orphan_cleanup (struct btrfs_root*) ;
 int btrfs_put_fs_root (struct btrfs_root*) ;
 scalar_t__ btrfs_root_refs (int *) ;
 unsigned int radix_tree_gang_lookup (int *,void**,scalar_t__,int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int btrfs_cleanup_fs_roots(struct btrfs_fs_info *fs_info)
{
 u64 root_objectid = 0;
 struct btrfs_root *gang[8];
 int i = 0;
 int err = 0;
 unsigned int ret = 0;
 int index;

 while (1) {
  index = srcu_read_lock(&fs_info->subvol_srcu);
  ret = radix_tree_gang_lookup(&fs_info->fs_roots_radix,
          (void **)gang, root_objectid,
          ARRAY_SIZE(gang));
  if (!ret) {
   srcu_read_unlock(&fs_info->subvol_srcu, index);
   break;
  }
  root_objectid = gang[ret - 1]->root_key.objectid + 1;

  for (i = 0; i < ret; i++) {

   if (btrfs_root_refs(&gang[i]->root_item) == 0) {
    gang[i] = ((void*)0);
    continue;
   }

   gang[i] = btrfs_grab_fs_root(gang[i]);
  }
  srcu_read_unlock(&fs_info->subvol_srcu, index);

  for (i = 0; i < ret; i++) {
   if (!gang[i])
    continue;
   root_objectid = gang[i]->root_key.objectid;
   err = btrfs_orphan_cleanup(gang[i]);
   if (err)
    break;
   btrfs_put_fs_root(gang[i]);
  }
  root_objectid++;
 }


 for (; i < ret; i++) {
  if (gang[i])
   btrfs_put_fs_root(gang[i]);
 }
 return err;
}
