
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct inode {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int S_IRWXUGO ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (int ,char const*) ;
 int default_perm ;
 int dput (struct dentry*) ;
 struct inode* gadgetfs_make_inode (struct super_block*,void*,struct file_operations const*,int) ;

__attribute__((used)) static struct dentry *
gadgetfs_create_file (struct super_block *sb, char const *name,
  void *data, const struct file_operations *fops)
{
 struct dentry *dentry;
 struct inode *inode;

 dentry = d_alloc_name(sb->s_root, name);
 if (!dentry)
  return ((void*)0);

 inode = gadgetfs_make_inode (sb, data, fops,
   S_IFREG | (default_perm & S_IRWXUGO));
 if (!inode) {
  dput(dentry);
  return ((void*)0);
 }
 d_add (dentry, inode);
 return dentry;
}
