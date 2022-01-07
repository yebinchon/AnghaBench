
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __debugfs_create_file (char const*,int ,struct dentry*,void*,int *,struct file_operations const*) ;
 int debugfs_noop_file_operations ;
 int debugfs_open_proxy_file_operations ;

struct dentry *debugfs_create_file_unsafe(const char *name, umode_t mode,
       struct dentry *parent, void *data,
       const struct file_operations *fops)
{

 return __debugfs_create_file(name, mode, parent, data,
    fops ? &debugfs_open_proxy_file_operations :
     &debugfs_noop_file_operations,
    fops);
}
