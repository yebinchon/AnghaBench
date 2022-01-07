
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int atomic_t ;


 int __oprofilefs_create_file (struct dentry*,char const*,int *,int,int *) ;
 int atomic_ro_fops ;

int oprofilefs_create_ro_atomic(struct dentry *root,
 char const *name, atomic_t *val)
{
 return __oprofilefs_create_file(root, name,
     &atomic_ro_fops, 0444, val);
}
