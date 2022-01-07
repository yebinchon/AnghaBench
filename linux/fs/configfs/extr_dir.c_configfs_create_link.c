
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {char* i_link; int * i_op; } ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_frag; } ;


 int CONFIGFS_ITEM_LINK ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 struct inode* configfs_create (struct dentry*,int) ;
 int configfs_make_dirent (struct configfs_dirent*,struct dentry*,struct configfs_dirent*,int,int ,int ) ;
 int configfs_remove_dirent (struct dentry*) ;
 int configfs_symlink_inode_operations ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;

int configfs_create_link(struct configfs_dirent *target, struct dentry *parent,
  struct dentry *dentry, char *body)
{
 int err = 0;
 umode_t mode = S_IFLNK | S_IRWXUGO;
 struct configfs_dirent *p = parent->d_fsdata;
 struct inode *inode;

 err = configfs_make_dirent(p, dentry, target, mode, CONFIGFS_ITEM_LINK,
   p->s_frag);
 if (err)
  return err;

 inode = configfs_create(dentry, mode);
 if (IS_ERR(inode))
  goto out_remove;

 inode->i_link = body;
 inode->i_op = &configfs_symlink_inode_operations;
 d_instantiate(dentry, inode);
 dget(dentry);
 return 0;

out_remove:
 configfs_remove_dirent(dentry);
 return PTR_ERR(inode);
}
