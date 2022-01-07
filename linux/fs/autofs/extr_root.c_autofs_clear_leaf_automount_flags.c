
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int * prev; int * next; } ;
struct dentry {int d_subdirs; struct list_head d_child; struct dentry* d_parent; } ;


 scalar_t__ IS_ROOT (struct dentry*) ;
 int managed_dentry_clear_managed (struct dentry*) ;
 int managed_dentry_set_managed (struct dentry*) ;

__attribute__((used)) static void autofs_clear_leaf_automount_flags(struct dentry *dentry)
{
 struct list_head *d_child;
 struct dentry *parent;


 if (IS_ROOT(dentry->d_parent))
  return;

 managed_dentry_clear_managed(dentry);

 parent = dentry->d_parent;

 if (IS_ROOT(parent->d_parent))
  return;
 d_child = &dentry->d_child;

 if (d_child->next == &parent->d_subdirs &&
     d_child->prev == &parent->d_subdirs)
  managed_dentry_set_managed(parent);
}
