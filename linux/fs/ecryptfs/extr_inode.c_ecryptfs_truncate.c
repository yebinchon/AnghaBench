
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int ia_valid; int ia_size; } ;
struct dentry {int dummy; } ;
typedef int loff_t ;


 int ATTR_SIZE ;
 int d_inode (struct dentry*) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int ecryptfs_inode_newsize_ok (int ,int ) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;
 int truncate_upper (struct dentry*,struct iattr*,struct iattr*) ;

int ecryptfs_truncate(struct dentry *dentry, loff_t new_length)
{
 struct iattr ia = { .ia_valid = ATTR_SIZE, .ia_size = new_length };
 struct iattr lower_ia = { .ia_valid = 0 };
 int rc;

 rc = ecryptfs_inode_newsize_ok(d_inode(dentry), new_length);
 if (rc)
  return rc;

 rc = truncate_upper(dentry, &ia, &lower_ia);
 if (!rc && lower_ia.ia_valid & ATTR_SIZE) {
  struct dentry *lower_dentry = ecryptfs_dentry_to_lower(dentry);

  inode_lock(d_inode(lower_dentry));
  rc = notify_change(lower_dentry, &lower_ia, ((void*)0));
  inode_unlock(d_inode(lower_dentry));
 }
 return rc;
}
