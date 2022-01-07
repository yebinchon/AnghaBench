
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_opflags; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 int IOP_XATTR ;
 int __vfs_getxattr (struct dentry*,struct inode*,char const*,void*,size_t) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

ssize_t
ecryptfs_getxattr_lower(struct dentry *lower_dentry, struct inode *lower_inode,
   const char *name, void *value, size_t size)
{
 int rc;

 if (!(lower_inode->i_opflags & IOP_XATTR)) {
  rc = -EOPNOTSUPP;
  goto out;
 }
 inode_lock(lower_inode);
 rc = __vfs_getxattr(lower_dentry, lower_inode, name, value, size);
 inode_unlock(lower_inode);
out:
 return rc;
}
