
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int * d_fsdata; int * d_op; } ;


 int autofs_dentry_operations ;
 scalar_t__ d_really_is_positive (struct dentry*) ;

int is_autofs_dentry(struct dentry *dentry)
{
 return dentry && d_really_is_positive(dentry) &&
  dentry->d_op == &autofs_dentry_operations &&
  dentry->d_fsdata != ((void*)0);
}
