
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;
struct debugfs_blob_wrapper {int dummy; } ;


 struct dentry* debugfs_create_file_unsafe (char const*,int ,struct dentry*,struct debugfs_blob_wrapper*,int *) ;
 int fops_blob ;

struct dentry *debugfs_create_blob(const char *name, umode_t mode,
       struct dentry *parent,
       struct debugfs_blob_wrapper *blob)
{
 return debugfs_create_file_unsafe(name, mode, parent, blob, &fops_blob);
}
