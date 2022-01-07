
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int modified_extents; } ;
struct btrfs_inode {scalar_t__ logged_trans; scalar_t__ last_sub_trans; scalar_t__ last_log_commit; int lock; TYPE_2__ extent_tree; TYPE_1__* root; } ;
struct TYPE_3__ {scalar_t__ last_log_commit; } ;


 scalar_t__ list_empty (int *) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int btrfs_inode_in_log(struct btrfs_inode *inode, u64 generation)
{
 int ret = 0;

 spin_lock(&inode->lock);
 if (inode->logged_trans == generation &&
     inode->last_sub_trans <= inode->last_log_commit &&
     inode->last_sub_trans <= inode->root->last_log_commit) {






  smp_mb();
  if (list_empty(&inode->extent_tree.modified_extents))
   ret = 1;
 }
 spin_unlock(&inode->lock);
 return ret;
}
