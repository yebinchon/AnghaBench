
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_qgroup_swapped_blocks {int swapped; int * blocks; int lock; } ;


 int BTRFS_MAX_LEVEL ;
 int RB_ROOT ;
 int spin_lock_init (int *) ;

void btrfs_qgroup_init_swapped_blocks(
 struct btrfs_qgroup_swapped_blocks *swapped_blocks)
{
 int i;

 spin_lock_init(&swapped_blocks->lock);
 for (i = 0; i < BTRFS_MAX_LEVEL; i++)
  swapped_blocks->blocks[i] = RB_ROOT;
 swapped_blocks->swapped = 0;
}
