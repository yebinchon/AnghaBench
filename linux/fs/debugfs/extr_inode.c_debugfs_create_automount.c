
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {void* i_private; int i_flags; } ;
struct dentry {int d_parent; void* d_fsdata; int d_sb; } ;
typedef scalar_t__ debugfs_automount_t ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int S_AUTOMOUNT ;
 struct inode* d_inode (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct inode* debugfs_get_inode (int ) ;
 struct dentry* end_creating (struct dentry*) ;
 struct dentry* failed_creating (struct dentry*) ;
 int fsnotify_mkdir (struct inode*,struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int make_empty_dir_inode (struct inode*) ;
 int pr_err (char*,char const*) ;
 struct dentry* start_creating (char const*,struct dentry*) ;
 scalar_t__ unlikely (int) ;

struct dentry *debugfs_create_automount(const char *name,
     struct dentry *parent,
     debugfs_automount_t f,
     void *data)
{
 struct dentry *dentry = start_creating(name, parent);
 struct inode *inode;

 if (IS_ERR(dentry))
  return dentry;

 inode = debugfs_get_inode(dentry->d_sb);
 if (unlikely(!inode)) {
  pr_err("out of free dentries, can not create automount '%s'\n",
         name);
  return failed_creating(dentry);
 }

 make_empty_dir_inode(inode);
 inode->i_flags |= S_AUTOMOUNT;
 inode->i_private = data;
 dentry->d_fsdata = (void *)f;

 inc_nlink(inode);
 d_instantiate(dentry, inode);
 inc_nlink(d_inode(dentry->d_parent));
 fsnotify_mkdir(d_inode(dentry->d_parent), dentry);
 return end_creating(dentry);
}
