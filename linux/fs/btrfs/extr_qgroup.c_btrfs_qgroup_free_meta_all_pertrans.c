
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int flags; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int BTRFS_QGROUP_RSV_META_PERTRANS ;
 int btrfs_qgroup_free_refroot (struct btrfs_fs_info*,int ,int ,int ) ;
 int is_fstree (int ) ;
 int test_bit (int ,int *) ;
 int trace_qgroup_meta_free_all_pertrans (struct btrfs_root*) ;

void btrfs_qgroup_free_meta_all_pertrans(struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if (!test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags) ||
     !is_fstree(root->root_key.objectid))
  return;


 trace_qgroup_meta_free_all_pertrans(root);

 btrfs_qgroup_free_refroot(fs_info, root->root_key.objectid, (u64)-1,
      BTRFS_QGROUP_RSV_META_PERTRANS);
}
