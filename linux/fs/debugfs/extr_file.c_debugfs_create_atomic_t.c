
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct dentry {int dummy; } ;
typedef int atomic_t ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int *,int *,int *,int *) ;
 int fops_atomic_t ;
 int fops_atomic_t_ro ;
 int fops_atomic_t_wo ;

struct dentry *debugfs_create_atomic_t(const char *name, umode_t mode,
     struct dentry *parent, atomic_t *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value,
     &fops_atomic_t, &fops_atomic_t_ro,
     &fops_atomic_t_wo);
}
