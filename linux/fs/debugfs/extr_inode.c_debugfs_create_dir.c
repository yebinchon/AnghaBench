
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int * i_fop; int * i_op; } ;
struct dentry {int d_parent; int d_sb; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IRWXU ;
 int S_IXUGO ;
 struct inode* d_inode (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int debugfs_dir_inode_operations ;
 struct inode* debugfs_get_inode (int ) ;
 struct dentry* end_creating (struct dentry*) ;
 struct dentry* failed_creating (struct dentry*) ;
 int fsnotify_mkdir (struct inode*,struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int pr_err (char*,char const*) ;
 int simple_dir_operations ;
 struct dentry* start_creating (char const*,struct dentry*) ;
 scalar_t__ unlikely (int) ;

struct dentry *debugfs_create_dir(const char *name, struct dentry *parent)
{
 struct dentry *dentry = start_creating(name, parent);
 struct inode *inode;

 if (IS_ERR(dentry))
  return dentry;

 inode = debugfs_get_inode(dentry->d_sb);
 if (unlikely(!inode)) {
  pr_err("out of free dentries, can not create directory '%s'\n",
         name);
  return failed_creating(dentry);
 }

 inode->i_mode = S_IFDIR | S_IRWXU | S_IRUGO | S_IXUGO;
 inode->i_op = &debugfs_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;


 inc_nlink(inode);
 d_instantiate(dentry, inode);
 inc_nlink(d_inode(dentry->d_parent));
 fsnotify_mkdir(d_inode(dentry->d_parent), dentry);
 return end_creating(dentry);
}
