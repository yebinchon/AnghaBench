
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flags; } ;
struct btrfs_inode {int flags; } ;


 struct btrfs_inode* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_APPEND ;
 int BTRFS_INODE_DIRSYNC ;
 int BTRFS_INODE_IMMUTABLE ;
 int BTRFS_INODE_NOATIME ;
 int BTRFS_INODE_SYNC ;
 unsigned int S_APPEND ;
 unsigned int S_DIRSYNC ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_SYNC ;
 int set_mask_bits (int *,unsigned int,unsigned int) ;

void btrfs_sync_inode_flags_to_i_flags(struct inode *inode)
{
 struct btrfs_inode *binode = BTRFS_I(inode);
 unsigned int new_fl = 0;

 if (binode->flags & BTRFS_INODE_SYNC)
  new_fl |= S_SYNC;
 if (binode->flags & BTRFS_INODE_IMMUTABLE)
  new_fl |= S_IMMUTABLE;
 if (binode->flags & BTRFS_INODE_APPEND)
  new_fl |= S_APPEND;
 if (binode->flags & BTRFS_INODE_NOATIME)
  new_fl |= S_NOATIME;
 if (binode->flags & BTRFS_INODE_DIRSYNC)
  new_fl |= S_DIRSYNC;

 set_mask_bits(&inode->i_flags,
        S_SYNC | S_APPEND | S_IMMUTABLE | S_NOATIME | S_DIRSYNC,
        new_fl);
}
