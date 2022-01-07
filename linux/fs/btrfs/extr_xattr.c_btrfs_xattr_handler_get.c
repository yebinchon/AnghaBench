
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int btrfs_getxattr (struct inode*,char const*,void*,size_t) ;
 char* xattr_full_name (struct xattr_handler const*,char const*) ;

__attribute__((used)) static int btrfs_xattr_handler_get(const struct xattr_handler *handler,
       struct dentry *unused, struct inode *inode,
       const char *name, void *buffer, size_t size)
{
 name = xattr_full_name(handler, name);
 return btrfs_getxattr(inode, name, buffer, size);
}
