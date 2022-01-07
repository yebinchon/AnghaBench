
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int flags; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int BTRFS_QGROUP_RSV_META_PREALLOC ;
 int is_fstree (int ) ;
 int qgroup_convert_meta (struct btrfs_fs_info*,int ,int) ;
 int sub_root_meta_rsv (struct btrfs_root*,int,int ) ;
 int test_bit (int ,int *) ;
 int trace_qgroup_meta_convert (struct btrfs_root*,int) ;

void btrfs_qgroup_convert_reserved_meta(struct btrfs_root *root, int num_bytes)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) ||
     !is_fstree(root->root_key.objectid))
  return;

 num_bytes = sub_root_meta_rsv(root, num_bytes,
          BTRFS_QGROUP_RSV_META_PREALLOC);
 trace_qgroup_meta_convert(root, num_bytes);
 qgroup_convert_meta(fs_info, root->root_key.objectid, num_bytes);
}
