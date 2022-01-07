
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,unsigned long*,int *,int *,int *) ;
 int fops_ulong ;
 int fops_ulong_ro ;
 int fops_ulong_wo ;

struct dentry *debugfs_create_ulong(const char *name, umode_t mode,
        struct dentry *parent, unsigned long *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value,
     &fops_ulong, &fops_ulong_ro,
     &fops_ulong_wo);
}
