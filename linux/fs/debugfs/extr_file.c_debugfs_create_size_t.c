
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,size_t*,int *,int *,int *) ;
 int fops_size_t ;
 int fops_size_t_ro ;
 int fops_size_t_wo ;

struct dentry *debugfs_create_size_t(const char *name, umode_t mode,
         struct dentry *parent, size_t *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value,
     &fops_size_t, &fops_size_t_ro,
     &fops_size_t_wo);
}
