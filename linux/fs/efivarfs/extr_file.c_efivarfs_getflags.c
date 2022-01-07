
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_flags; } ;


 unsigned int FS_IMMUTABLE_FL ;
 unsigned int S_IMMUTABLE ;

__attribute__((used)) static inline unsigned int efivarfs_getflags(struct inode *inode)
{
 unsigned int i_flags;
 unsigned int flags = 0;

 i_flags = inode->i_flags;
 if (i_flags & S_IMMUTABLE)
  flags |= FS_IMMUTABLE_FL;
 return flags;
}
