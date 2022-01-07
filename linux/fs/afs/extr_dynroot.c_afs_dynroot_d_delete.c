
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_really_is_positive (struct dentry const*) ;

__attribute__((used)) static int afs_dynroot_d_delete(const struct dentry *dentry)
{
 return d_really_is_positive(dentry);
}
