
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int KERN_WARNING ;
 int PTR_ERR (struct inode*) ;
 int d_instantiate_new (struct dentry*,struct inode*) ;
 struct inode* ecryptfs_do_create (struct inode*,struct dentry*,int ) ;
 int ecryptfs_do_unlink (struct inode*,struct dentry*,struct inode*) ;
 int ecryptfs_initialize_file (struct dentry*,struct inode*) ;
 int ecryptfs_printk (int ,char*) ;
 int iget_failed (struct inode*) ;

__attribute__((used)) static int
ecryptfs_create(struct inode *directory_inode, struct dentry *ecryptfs_dentry,
  umode_t mode, bool excl)
{
 struct inode *ecryptfs_inode;
 int rc;

 ecryptfs_inode = ecryptfs_do_create(directory_inode, ecryptfs_dentry,
         mode);
 if (IS_ERR(ecryptfs_inode)) {
  ecryptfs_printk(KERN_WARNING, "Failed to create file in"
    "lower filesystem\n");
  rc = PTR_ERR(ecryptfs_inode);
  goto out;
 }


 rc = ecryptfs_initialize_file(ecryptfs_dentry, ecryptfs_inode);
 if (rc) {
  ecryptfs_do_unlink(directory_inode, ecryptfs_dentry,
       ecryptfs_inode);
  iget_failed(ecryptfs_inode);
  goto out;
 }
 d_instantiate_new(ecryptfs_dentry, ecryptfs_inode);
out:
 return rc;
}
