
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_inode {int outstanding_extents; int root; int lock; } ;


 int btrfs_ino (struct btrfs_inode*) ;
 scalar_t__ btrfs_is_free_space_inode (struct btrfs_inode*) ;
 int lockdep_assert_held (int *) ;
 int trace_btrfs_inode_mod_outstanding_extents (int ,int ,int) ;

__attribute__((used)) static inline void btrfs_mod_outstanding_extents(struct btrfs_inode *inode,
       int mod)
{
 lockdep_assert_held(&inode->lock);
 inode->outstanding_extents += mod;
 if (btrfs_is_free_space_inode(inode))
  return;
 trace_btrfs_inode_mod_outstanding_extents(inode->root, btrfs_ino(inode),
        mod);
}
