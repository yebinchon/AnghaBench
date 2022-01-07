
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct fid {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int S_ISDIR (int ) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int exportfs_encode_inode_fh (struct inode*,struct fid*,int*,struct inode*) ;

int exportfs_encode_fh(struct dentry *dentry, struct fid *fid, int *max_len,
  int connectable)
{
 int error;
 struct dentry *p = ((void*)0);
 struct inode *inode = dentry->d_inode, *parent = ((void*)0);

 if (connectable && !S_ISDIR(inode->i_mode)) {
  p = dget_parent(dentry);




  parent = p->d_inode;
 }

 error = exportfs_encode_inode_fh(inode, fid, max_len, parent);
 dput(p);

 return error;
}
