
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int i_opflags; } ;


 int EOPNOTSUPP ;
 int IOP_XATTR ;
 TYPE_1__* d_inode (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int fsstack_copy_attr_all (struct inode*,TYPE_1__*) ;
 int vfs_setxattr (struct dentry*,char const*,void const*,size_t,int) ;

int
ecryptfs_setxattr(struct dentry *dentry, struct inode *inode,
    const char *name, const void *value,
    size_t size, int flags)
{
 int rc;
 struct dentry *lower_dentry;

 lower_dentry = ecryptfs_dentry_to_lower(dentry);
 if (!(d_inode(lower_dentry)->i_opflags & IOP_XATTR)) {
  rc = -EOPNOTSUPP;
  goto out;
 }
 rc = vfs_setxattr(lower_dentry, name, value, size, flags);
 if (!rc && inode)
  fsstack_copy_attr_all(inode, d_inode(lower_dentry));
out:
 return rc;
}
