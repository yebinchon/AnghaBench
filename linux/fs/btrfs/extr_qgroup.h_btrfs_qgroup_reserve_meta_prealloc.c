
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;


 int BTRFS_QGROUP_RSV_META_PREALLOC ;
 int __btrfs_qgroup_reserve_meta (struct btrfs_root*,int,int ,int) ;

__attribute__((used)) static inline int btrfs_qgroup_reserve_meta_prealloc(struct btrfs_root *root,
    int num_bytes, bool enforce)
{
 return __btrfs_qgroup_reserve_meta(root, num_bytes,
   BTRFS_QGROUP_RSV_META_PREALLOC, enforce);
}
