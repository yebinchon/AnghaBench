
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_parent; } ;


 int configfs_remove_dirent (struct dentry*) ;
 int d_count (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int pr_debug (char*,struct dentry*,int ) ;
 int simple_rmdir (int ,struct dentry*) ;

__attribute__((used)) static void remove_dir(struct dentry * d)
{
 struct dentry * parent = dget(d->d_parent);

 configfs_remove_dirent(d);

 if (d_really_is_positive(d))
  simple_rmdir(d_inode(parent),d);

 pr_debug(" o %pd removing done (%d)\n", d, d_count(d));

 dput(parent);
}
