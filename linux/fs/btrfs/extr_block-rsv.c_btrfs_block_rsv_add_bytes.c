
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_rsv {scalar_t__ reserved; scalar_t__ size; int full; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_block_rsv_add_bytes(struct btrfs_block_rsv *block_rsv,
          u64 num_bytes, bool update_size)
{
 spin_lock(&block_rsv->lock);
 block_rsv->reserved += num_bytes;
 if (update_size)
  block_rsv->size += num_bytes;
 else if (block_rsv->reserved >= block_rsv->size)
  block_rsv->full = 1;
 spin_unlock(&block_rsv->lock);
}
