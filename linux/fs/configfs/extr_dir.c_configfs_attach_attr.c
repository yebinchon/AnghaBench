
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; scalar_t__ i_size; } ;
struct dentry {int d_fsdata; } ;
struct configfs_dirent {int s_type; struct dentry* s_dentry; struct configfs_attribute* s_element; } ;
struct configfs_attribute {int ca_mode; } ;


 int CONFIGFS_ITEM_BIN_ATTR ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ PAGE_SIZE ;
 int PTR_ERR (struct inode*) ;
 int S_IALLUGO ;
 int S_IFREG ;
 int configfs_bin_file_operations ;
 struct inode* configfs_create (struct dentry*,int) ;
 int configfs_dirent_lock ;
 int configfs_file_operations ;
 int configfs_get (struct configfs_dirent*) ;
 int configfs_put (struct configfs_dirent*) ;
 int d_add (struct dentry*,struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int configfs_attach_attr(struct configfs_dirent * sd, struct dentry * dentry)
{
 struct configfs_attribute * attr = sd->s_element;
 struct inode *inode;

 spin_lock(&configfs_dirent_lock);
 dentry->d_fsdata = configfs_get(sd);
 sd->s_dentry = dentry;
 spin_unlock(&configfs_dirent_lock);

 inode = configfs_create(dentry, (attr->ca_mode & S_IALLUGO) | S_IFREG);
 if (IS_ERR(inode)) {
  configfs_put(sd);
  return PTR_ERR(inode);
 }
 if (sd->s_type & CONFIGFS_ITEM_BIN_ATTR) {
  inode->i_size = 0;
  inode->i_fop = &configfs_bin_file_operations;
 } else {
  inode->i_size = PAGE_SIZE;
  inode->i_fop = &configfs_file_operations;
 }
 d_add(dentry, inode);
 return 0;
}
