
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_ordered_sum {int list; } ;
struct btrfs_ordered_inode_tree {int lock; } ;
struct btrfs_ordered_extent {int list; int inode; } ;
struct TYPE_2__ {struct btrfs_ordered_inode_tree ordered_tree; } ;


 TYPE_1__* BTRFS_I (int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void btrfs_add_ordered_sum(struct btrfs_ordered_extent *entry,
      struct btrfs_ordered_sum *sum)
{
 struct btrfs_ordered_inode_tree *tree;

 tree = &BTRFS_I(entry->inode)->ordered_tree;
 spin_lock_irq(&tree->lock);
 list_add_tail(&sum->list, &entry->list);
 spin_unlock_irq(&tree->lock);
}
