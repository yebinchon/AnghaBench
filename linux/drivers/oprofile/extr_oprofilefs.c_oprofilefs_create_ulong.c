
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int __oprofilefs_create_file (struct dentry*,char const*,int *,int,unsigned long*) ;
 int ulong_fops ;

int oprofilefs_create_ulong(struct dentry *root,
 char const *name, unsigned long *val)
{
 return __oprofilefs_create_file(root, name,
     &ulong_fops, 0644, val);
}
