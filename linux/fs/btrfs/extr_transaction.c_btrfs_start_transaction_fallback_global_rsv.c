
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int transid; int bytes_reserved; int * block_rsv; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int trans_block_rsv; } ;


 int BTRFS_RESERVE_FLUSH_ALL ;
 int ENOSPC ;
 struct btrfs_trans_handle* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int TRANS_START ;
 int btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,unsigned int) ;
 int btrfs_cond_migrate_bytes (struct btrfs_fs_info*,int *,int ,int) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 struct btrfs_trans_handle* start_transaction (struct btrfs_root*,unsigned int,int ,int ,int) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,int ,int) ;

struct btrfs_trans_handle *btrfs_start_transaction_fallback_global_rsv(
     struct btrfs_root *root,
     unsigned int num_items,
     int min_factor)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_trans_handle *trans;
 u64 num_bytes;
 int ret;







 trans = start_transaction(root, num_items, TRANS_START,
      BTRFS_RESERVE_FLUSH_ALL, 0);
 if (!IS_ERR(trans) || PTR_ERR(trans) != -ENOSPC)
  return trans;

 trans = btrfs_start_transaction(root, 0);
 if (IS_ERR(trans))
  return trans;

 num_bytes = btrfs_calc_insert_metadata_size(fs_info, num_items);
 ret = btrfs_cond_migrate_bytes(fs_info, &fs_info->trans_block_rsv,
           num_bytes, min_factor);
 if (ret) {
  btrfs_end_transaction(trans);
  return ERR_PTR(ret);
 }

 trans->block_rsv = &fs_info->trans_block_rsv;
 trans->bytes_reserved = num_bytes;
 trace_btrfs_space_reservation(fs_info, "transaction",
          trans->transid, num_bytes, 1);

 return trans;
}
