
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; char* i_link; int * i_op; } ;
struct dentry {int d_sb; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct inode* debugfs_get_inode (int ) ;
 int debugfs_symlink_inode_operations ;
 struct dentry* end_creating (struct dentry*) ;
 struct dentry* failed_creating (struct dentry*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int pr_err (char*,char const*) ;
 struct dentry* start_creating (char const*,struct dentry*) ;
 scalar_t__ unlikely (int) ;

struct dentry *debugfs_create_symlink(const char *name, struct dentry *parent,
          const char *target)
{
 struct dentry *dentry;
 struct inode *inode;
 char *link = kstrdup(target, GFP_KERNEL);
 if (!link)
  return ERR_PTR(-ENOMEM);

 dentry = start_creating(name, parent);
 if (IS_ERR(dentry)) {
  kfree(link);
  return dentry;
 }

 inode = debugfs_get_inode(dentry->d_sb);
 if (unlikely(!inode)) {
  pr_err("out of free dentries, can not create symlink '%s'\n",
         name);
  kfree(link);
  return failed_creating(dentry);
 }
 inode->i_mode = S_IFLNK | S_IRWXUGO;
 inode->i_op = &debugfs_symlink_inode_operations;
 inode->i_link = link;
 d_instantiate(dentry, inode);
 return end_creating(dentry);
}
