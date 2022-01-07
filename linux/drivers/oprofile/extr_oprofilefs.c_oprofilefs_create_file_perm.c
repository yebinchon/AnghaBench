
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int __oprofilefs_create_file (struct dentry*,char const*,struct file_operations const*,int,int *) ;

int oprofilefs_create_file_perm(struct dentry *root,
 char const *name, const struct file_operations *fops, int perm)
{
 return __oprofilefs_create_file(root, name, fops, perm, ((void*)0));
}
