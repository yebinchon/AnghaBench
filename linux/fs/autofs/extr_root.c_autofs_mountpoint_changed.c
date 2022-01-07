
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; } ;
struct dentry {int d_name; struct dentry* d_parent; int d_sb; } ;
struct autofs_sb_info {int type; } ;
struct autofs_info {int last_used; } ;


 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 scalar_t__ autofs_type_indirect (int ) ;
 struct dentry* d_lookup (struct dentry*,int *) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dput (struct dentry*) ;
 int jiffies ;

__attribute__((used)) static struct dentry *autofs_mountpoint_changed(struct path *path)
{
 struct dentry *dentry = path->dentry;
 struct autofs_sb_info *sbi = autofs_sbi(dentry->d_sb);





 if (autofs_type_indirect(sbi->type) && d_unhashed(dentry)) {
  struct dentry *parent = dentry->d_parent;
  struct autofs_info *ino;
  struct dentry *new;

  new = d_lookup(parent, &dentry->d_name);
  if (!new)
   return ((void*)0);
  ino = autofs_dentry_ino(new);
  ino->last_used = jiffies;
  dput(path->dentry);
  path->dentry = new;
 }
 return path->dentry;
}
