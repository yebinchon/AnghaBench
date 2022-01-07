
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int d_name; } ;


 int EACCES ;
 int ENOENT ;
 struct inode* ERR_PTR (int) ;
 int adfs_dir_lookup_byname (struct inode*,int *,struct object_info*) ;
 struct inode* adfs_iget (int ,struct object_info*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;

__attribute__((used)) static struct dentry *
adfs_lookup(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
 struct inode *inode = ((void*)0);
 struct object_info obj;
 int error;

 error = adfs_dir_lookup_byname(dir, &dentry->d_name, &obj);
 if (error == 0) {




  inode = adfs_iget(dir->i_sb, &obj);
  if (!inode)
   inode = ERR_PTR(-EACCES);
 } else if (error != -ENOENT) {
  inode = ERR_PTR(error);
 }
 return d_splice_alias(inode, dentry);
}
