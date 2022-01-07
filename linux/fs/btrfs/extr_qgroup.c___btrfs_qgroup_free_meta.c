
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int nodesize; int flags; } ;
typedef int s64 ;
typedef enum btrfs_qgroup_rsv_type { ____Placeholder_btrfs_qgroup_rsv_type } btrfs_qgroup_rsv_type ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int BUG_ON (int) ;
 int btrfs_qgroup_free_refroot (struct btrfs_fs_info*,int ,int,int) ;
 int is_fstree (int ) ;
 int round_down (int,int ) ;
 int sub_root_meta_rsv (struct btrfs_root*,int,int) ;
 int test_bit (int ,int *) ;
 int trace_qgroup_meta_reserve (struct btrfs_root*,int ,int) ;

void __btrfs_qgroup_free_meta(struct btrfs_root *root, int num_bytes,
         enum btrfs_qgroup_rsv_type type)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) ||
     !is_fstree(root->root_key.objectid))
  return;






 num_bytes = sub_root_meta_rsv(root, num_bytes, type);
 BUG_ON(num_bytes != round_down(num_bytes, fs_info->nodesize));
 trace_qgroup_meta_reserve(root, -(s64)num_bytes, type);
 btrfs_qgroup_free_refroot(fs_info, root->root_key.objectid,
      num_bytes, type);
}
