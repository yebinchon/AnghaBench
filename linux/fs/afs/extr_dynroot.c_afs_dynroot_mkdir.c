
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; int s_active; } ;
struct dentry {int d_inode; void* d_fsdata; } ;
struct afs_net {struct super_block* dynroot_sb; } ;
struct afs_cell {int name_len; int name; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 scalar_t__ atomic_read (int *) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;

int afs_dynroot_mkdir(struct afs_net *net, struct afs_cell *cell)
{
 struct super_block *sb = net->dynroot_sb;
 struct dentry *root, *subdir;
 int ret;

 if (!sb || atomic_read(&sb->s_active) == 0)
  return 0;


 root = sb->s_root;
 inode_lock(root->d_inode);
 subdir = lookup_one_len(cell->name, root, cell->name_len);
 if (IS_ERR(subdir)) {
  ret = PTR_ERR(subdir);
  goto unlock;
 }


 subdir->d_fsdata = (void *)1UL;
 ret = 0;
unlock:
 inode_unlock(root->d_inode);
 return ret;
}
