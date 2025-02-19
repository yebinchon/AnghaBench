
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int BUG_ON (int) ;
 int XATTR_REPLACE ;
 int ecryptfs_removexattr (struct dentry*,struct inode*,char const*) ;
 int ecryptfs_setxattr (struct dentry*,struct inode*,char const*,void const*,size_t,int) ;

__attribute__((used)) static int ecryptfs_xattr_set(const struct xattr_handler *handler,
         struct dentry *dentry, struct inode *inode,
         const char *name, const void *value, size_t size,
         int flags)
{
 if (value)
  return ecryptfs_setxattr(dentry, inode, name, value, size, flags);
 else {
  BUG_ON(flags != XATTR_REPLACE);
  return ecryptfs_removexattr(dentry, inode, name);
 }
}
