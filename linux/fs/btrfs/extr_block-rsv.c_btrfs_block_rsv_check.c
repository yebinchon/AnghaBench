
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_rsv {scalar_t__ reserved; int lock; int size; } ;


 int ENOSPC ;
 scalar_t__ div_factor (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_block_rsv_check(struct btrfs_block_rsv *block_rsv, int min_factor)
{
 u64 num_bytes = 0;
 int ret = -ENOSPC;

 if (!block_rsv)
  return 0;

 spin_lock(&block_rsv->lock);
 num_bytes = div_factor(block_rsv->size, min_factor);
 if (block_rsv->reserved >= num_bytes)
  ret = 0;
 spin_unlock(&block_rsv->lock);

 return ret;
}
