
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_2__ {unsigned int flags; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 unsigned int BTRFS_INODE_COMPRESS ;
 unsigned int BTRFS_INODE_NOCOMPRESS ;
 unsigned int BTRFS_INODE_NODATACOW ;
 unsigned int BTRFS_INODE_NODATASUM ;
 scalar_t__ S_ISREG (int ) ;
 int btrfs_sync_inode_flags_to_i_flags (struct inode*) ;

__attribute__((used)) static void btrfs_inherit_iflags(struct inode *inode, struct inode *dir)
{
 unsigned int flags;

 if (!dir)
  return;

 flags = BTRFS_I(dir)->flags;

 if (flags & BTRFS_INODE_NOCOMPRESS) {
  BTRFS_I(inode)->flags &= ~BTRFS_INODE_COMPRESS;
  BTRFS_I(inode)->flags |= BTRFS_INODE_NOCOMPRESS;
 } else if (flags & BTRFS_INODE_COMPRESS) {
  BTRFS_I(inode)->flags &= ~BTRFS_INODE_NOCOMPRESS;
  BTRFS_I(inode)->flags |= BTRFS_INODE_COMPRESS;
 }

 if (flags & BTRFS_INODE_NODATACOW) {
  BTRFS_I(inode)->flags |= BTRFS_INODE_NODATACOW;
  if (S_ISREG(inode->i_mode))
   BTRFS_I(inode)->flags |= BTRFS_INODE_NODATASUM;
 }

 btrfs_sync_inode_flags_to_i_flags(inode);
}
