
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; int s_active; } ;
struct dentry {int d_inode; int * d_fsdata; } ;
struct afs_net {struct super_block* dynroot_sb; } ;
struct afs_cell {int name_len; int name; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int _debug (char*,struct dentry*,...) ;
 int _leave (char*) ;
 scalar_t__ atomic_read (int *) ;
 int d_count (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct dentry* try_lookup_one_len (int ,struct dentry*,int ) ;

void afs_dynroot_rmdir(struct afs_net *net, struct afs_cell *cell)
{
 struct super_block *sb = net->dynroot_sb;
 struct dentry *root, *subdir;

 if (!sb || atomic_read(&sb->s_active) == 0)
  return;

 root = sb->s_root;
 inode_lock(root->d_inode);


 subdir = try_lookup_one_len(cell->name, root, cell->name_len);
 if (IS_ERR_OR_NULL(subdir)) {
  _debug("lookup %ld", PTR_ERR(subdir));
  goto no_dentry;
 }

 _debug("rmdir %pd %u", subdir, d_count(subdir));

 if (subdir->d_fsdata) {
  _debug("unpin %u", d_count(subdir));
  subdir->d_fsdata = ((void*)0);
  dput(subdir);
 }
 dput(subdir);
no_dentry:
 inode_unlock(root->d_inode);
 _leave("");
}
