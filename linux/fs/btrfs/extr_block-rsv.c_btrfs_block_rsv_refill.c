
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_root {int dummy; } ;
struct btrfs_block_rsv {scalar_t__ reserved; int lock; } ;
typedef enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;


 int ENOSPC ;
 int btrfs_block_rsv_add_bytes (struct btrfs_block_rsv*,scalar_t__,int) ;
 int btrfs_reserve_metadata_bytes (struct btrfs_root*,struct btrfs_block_rsv*,scalar_t__,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_block_rsv_refill(struct btrfs_root *root,
      struct btrfs_block_rsv *block_rsv, u64 min_reserved,
      enum btrfs_reserve_flush_enum flush)
{
 u64 num_bytes = 0;
 int ret = -ENOSPC;

 if (!block_rsv)
  return 0;

 spin_lock(&block_rsv->lock);
 num_bytes = min_reserved;
 if (block_rsv->reserved >= num_bytes)
  ret = 0;
 else
  num_bytes -= block_rsv->reserved;
 spin_unlock(&block_rsv->lock);

 if (!ret)
  return 0;

 ret = btrfs_reserve_metadata_bytes(root, block_rsv, num_bytes, flush);
 if (!ret) {
  btrfs_block_rsv_add_bytes(block_rsv, num_bytes, 0);
  return 0;
 }

 return ret;
}
