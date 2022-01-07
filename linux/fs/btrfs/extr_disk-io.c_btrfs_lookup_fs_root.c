
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int fs_roots_radix_lock; int fs_roots_radix; } ;


 struct btrfs_root* radix_tree_lookup (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct btrfs_root *btrfs_lookup_fs_root(struct btrfs_fs_info *fs_info,
     u64 root_id)
{
 struct btrfs_root *root;

 spin_lock(&fs_info->fs_roots_radix_lock);
 root = radix_tree_lookup(&fs_info->fs_roots_radix,
     (unsigned long)root_id);
 spin_unlock(&fs_info->fs_roots_radix_lock);
 return root;
}
