
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;


 scalar_t__ IS_ROOT (struct dentry*) ;
 int managed_dentry_clear_managed (struct dentry*) ;
 int managed_dentry_set_managed (struct dentry*) ;

__attribute__((used)) static void autofs_set_leaf_automount_flags(struct dentry *dentry)
{
 struct dentry *parent;


 if (IS_ROOT(dentry->d_parent))
  return;

 managed_dentry_set_managed(dentry);

 parent = dentry->d_parent;

 if (IS_ROOT(parent->d_parent))
  return;
 managed_dentry_clear_managed(parent);
}
