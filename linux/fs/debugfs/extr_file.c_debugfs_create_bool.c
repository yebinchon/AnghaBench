
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int*,int *,int *,int *) ;
 int fops_bool ;
 int fops_bool_ro ;
 int fops_bool_wo ;

struct dentry *debugfs_create_bool(const char *name, umode_t mode,
       struct dentry *parent, bool *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value, &fops_bool,
       &fops_bool_ro, &fops_bool_wo);
}
