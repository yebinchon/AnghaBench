
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int ssize_t ;


 int v9fs_xattr_get (struct dentry*,int *,char*,size_t) ;

ssize_t v9fs_listxattr(struct dentry *dentry, char *buffer, size_t buffer_size)
{
 return v9fs_xattr_get(dentry, ((void*)0), buffer, buffer_size);
}
