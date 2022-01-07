
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_block_rsv {int space_info; } ;
struct btrfs_fs_info {int nodesize; int flags; struct btrfs_block_rsv global_block_rsv; } ;


 int BTRFS_BLOCK_GROUP_METADATA ;
 int BTRFS_FS_QUOTA_ENABLED ;
 int BTRFS_RESERVE_FLUSH_ALL ;
 int ENOSPC ;
 int btrfs_block_rsv_add (struct btrfs_root*,struct btrfs_block_rsv*,int,int ) ;
 int btrfs_block_rsv_migrate (struct btrfs_block_rsv*,struct btrfs_block_rsv*,int,int) ;
 int btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,int) ;
 int btrfs_find_space_info (struct btrfs_fs_info*,int ) ;
 int btrfs_qgroup_free_meta_prealloc (struct btrfs_root*,int) ;
 int btrfs_qgroup_reserve_meta_prealloc (struct btrfs_root*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

int btrfs_subvolume_reserve_metadata(struct btrfs_root *root,
         struct btrfs_block_rsv *rsv, int items,
         bool use_global_rsv)
{
 u64 qgroup_num_bytes = 0;
 u64 num_bytes;
 int ret;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_block_rsv *global_rsv = &fs_info->global_block_rsv;

 if (test_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags)) {

  qgroup_num_bytes = 3 * fs_info->nodesize;
  ret = btrfs_qgroup_reserve_meta_prealloc(root,
    qgroup_num_bytes, 1);
  if (ret)
   return ret;
 }

 num_bytes = btrfs_calc_insert_metadata_size(fs_info, items);
 rsv->space_info = btrfs_find_space_info(fs_info,
         BTRFS_BLOCK_GROUP_METADATA);
 ret = btrfs_block_rsv_add(root, rsv, num_bytes,
      BTRFS_RESERVE_FLUSH_ALL);

 if (ret == -ENOSPC && use_global_rsv)
  ret = btrfs_block_rsv_migrate(global_rsv, rsv, num_bytes, 1);

 if (ret && qgroup_num_bytes)
  btrfs_qgroup_free_meta_prealloc(root, qgroup_num_bytes);

 return ret;
}
