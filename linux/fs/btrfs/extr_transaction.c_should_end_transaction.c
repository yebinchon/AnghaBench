
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int global_block_rsv; } ;


 int btrfs_block_rsv_check (int *,int) ;
 scalar_t__ btrfs_check_space_for_delayed_refs (struct btrfs_fs_info*) ;

__attribute__((used)) static int should_end_transaction(struct btrfs_trans_handle *trans)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;

 if (btrfs_check_space_for_delayed_refs(fs_info))
  return 1;

 return !!btrfs_block_rsv_check(&fs_info->global_block_rsv, 5);
}
