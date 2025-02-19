
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {scalar_t__ d_inode; } ;


 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 int __exfat_revalidate (struct dentry*) ;

__attribute__((used)) static int exfat_revalidate(struct dentry *dentry, unsigned int flags)
{
 if (flags & LOOKUP_RCU)
  return -ECHILD;

 if (dentry->d_inode)
  return 1;
 return __exfat_revalidate(dentry);
}
