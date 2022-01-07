
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_full_stripe_locks_tree {int lock; int root; } ;


 int RB_ROOT ;
 int mutex_init (int *) ;

__attribute__((used)) static inline void btrfs_init_full_stripe_locks_tree(
   struct btrfs_full_stripe_locks_tree *locks_root)
{
 locks_root->root = RB_ROOT;
 mutex_init(&locks_root->lock);
}
