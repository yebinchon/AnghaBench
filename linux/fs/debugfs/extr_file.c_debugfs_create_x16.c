
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u16 ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int *,int *,int *,int *) ;
 int fops_x16 ;
 int fops_x16_ro ;
 int fops_x16_wo ;

struct dentry *debugfs_create_x16(const char *name, umode_t mode,
     struct dentry *parent, u16 *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value, &fops_x16,
       &fops_x16_ro, &fops_x16_wo);
}
