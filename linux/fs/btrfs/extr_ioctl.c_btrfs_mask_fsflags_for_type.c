
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 unsigned int FS_DIRSYNC_FL ;
 unsigned int FS_NOATIME_FL ;
 unsigned int FS_NODUMP_FL ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;

__attribute__((used)) static unsigned int btrfs_mask_fsflags_for_type(struct inode *inode,
  unsigned int flags)
{
 if (S_ISDIR(inode->i_mode))
  return flags;
 else if (S_ISREG(inode->i_mode))
  return flags & ~FS_DIRSYNC_FL;
 else
  return flags & (FS_NODUMP_FL | FS_NOATIME_FL);
}
