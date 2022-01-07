
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_rsv {scalar_t__ reserved; scalar_t__ size; int lock; scalar_t__ full; } ;


 int ENOSPC ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_block_rsv_use_bytes(struct btrfs_block_rsv *block_rsv, u64 num_bytes)
{
 int ret = -ENOSPC;

 spin_lock(&block_rsv->lock);
 if (block_rsv->reserved >= num_bytes) {
  block_rsv->reserved -= num_bytes;
  if (block_rsv->reserved < block_rsv->size)
   block_rsv->full = 0;
  ret = 0;
 }
 spin_unlock(&block_rsv->lock);
 return ret;
}
