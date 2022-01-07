
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int dummy; } ;


 int BTRFS_QGROUP_RSV_META_PERTRANS ;
 int __btrfs_qgroup_free_meta (struct btrfs_root*,int,int ) ;

__attribute__((used)) static inline void btrfs_qgroup_free_meta_pertrans(struct btrfs_root *root,
         int num_bytes)
{
 __btrfs_qgroup_free_meta(root, num_bytes,
   BTRFS_QGROUP_RSV_META_PERTRANS);
}
