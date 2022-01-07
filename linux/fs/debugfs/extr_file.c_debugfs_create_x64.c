
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u64 ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int *,int *,int *,int *) ;
 int fops_x64 ;
 int fops_x64_ro ;
 int fops_x64_wo ;

struct dentry *debugfs_create_x64(const char *name, umode_t mode,
     struct dentry *parent, u64 *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value, &fops_x64,
       &fops_x64_ro, &fops_x64_wo);
}
