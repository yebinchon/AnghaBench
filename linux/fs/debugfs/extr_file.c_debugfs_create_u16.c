
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u16 ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int *,int *,int *,int *) ;
 int fops_u16 ;
 int fops_u16_ro ;
 int fops_u16_wo ;

struct dentry *debugfs_create_u16(const char *name, umode_t mode,
      struct dentry *parent, u16 *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value, &fops_u16,
       &fops_u16_ro, &fops_u16_wo);
}
