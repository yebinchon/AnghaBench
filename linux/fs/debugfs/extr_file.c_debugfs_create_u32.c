
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int *,int *,int *,int *) ;
 int fops_u32 ;
 int fops_u32_ro ;
 int fops_u32_wo ;

struct dentry *debugfs_create_u32(const char *name, umode_t mode,
     struct dentry *parent, u32 *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value, &fops_u32,
       &fops_u32_ro, &fops_u32_wo);
}
