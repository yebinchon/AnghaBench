
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ecryptfs_getxattr (struct dentry*,struct inode*,char const*,void*,size_t) ;

__attribute__((used)) static int ecryptfs_xattr_get(const struct xattr_handler *handler,
         struct dentry *dentry, struct inode *inode,
         const char *name, void *buffer, size_t size)
{
 return ecryptfs_getxattr(dentry, inode, name, buffer, size);
}
