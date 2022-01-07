
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_ctime; int i_mtime; } ;
struct dentry {int d_parent; int d_sb; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int dummy; } ;


 int EEXIST ;
 int ENOENT ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 struct inode* configfs_new_inode (int ,struct configfs_dirent*,int ) ;
 int configfs_set_inode_lock_class (struct configfs_dirent*,struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (int ) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;

struct inode *configfs_create(struct dentry *dentry, umode_t mode)
{
 struct inode *inode = ((void*)0);
 struct configfs_dirent *sd;
 struct inode *p_inode;

 if (!dentry)
  return ERR_PTR(-ENOENT);

 if (d_really_is_positive(dentry))
  return ERR_PTR(-EEXIST);

 sd = dentry->d_fsdata;
 inode = configfs_new_inode(mode, sd, dentry->d_sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 p_inode = d_inode(dentry->d_parent);
 p_inode->i_mtime = p_inode->i_ctime = current_time(p_inode);
 configfs_set_inode_lock_class(sd, inode);
 return inode;
}
