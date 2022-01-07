
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int d_really_is_positive (struct dentry*) ;
 TYPE_1__* debugfs_mount ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len_unlocked (char const*,struct dentry*,int ) ;
 int strlen (char const*) ;

struct dentry *debugfs_lookup(const char *name, struct dentry *parent)
{
 struct dentry *dentry;

 if (IS_ERR(parent))
  return ((void*)0);

 if (!parent)
  parent = debugfs_mount->mnt_root;

 dentry = lookup_one_len_unlocked(name, parent, strlen(name));
 if (IS_ERR(dentry))
  return ((void*)0);
 if (!d_really_is_positive(dentry)) {
  dput(dentry);
  return ((void*)0);
 }
 return dentry;
}
