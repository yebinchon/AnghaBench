
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dentry {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {TYPE_1__* i_op; } ;
struct TYPE_5__ {int (* listxattr ) (struct dentry*,char*,size_t) ;} ;


 int EOPNOTSUPP ;
 TYPE_2__* d_inode (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int inode_lock (TYPE_2__*) ;
 int inode_unlock (TYPE_2__*) ;
 int stub1 (struct dentry*,char*,size_t) ;

__attribute__((used)) static ssize_t
ecryptfs_listxattr(struct dentry *dentry, char *list, size_t size)
{
 int rc = 0;
 struct dentry *lower_dentry;

 lower_dentry = ecryptfs_dentry_to_lower(dentry);
 if (!d_inode(lower_dentry)->i_op->listxattr) {
  rc = -EOPNOTSUPP;
  goto out;
 }
 inode_lock(d_inode(lower_dentry));
 rc = d_inode(lower_dentry)->i_op->listxattr(lower_dentry, list, size);
 inode_unlock(d_inode(lower_dentry));
out:
 return rc;
}
