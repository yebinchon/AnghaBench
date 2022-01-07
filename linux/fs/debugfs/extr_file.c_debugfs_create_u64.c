
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u64 ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int *,int *,int *,int *) ;
 int fops_u64 ;
 int fops_u64_ro ;
 int fops_u64_wo ;

struct dentry *debugfs_create_u64(const char *name, umode_t mode,
     struct dentry *parent, u64 *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value, &fops_u64,
       &fops_u64_ro, &fops_u64_wo);
}
