
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u8 ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_mode_unsafe (char const*,int ,struct dentry*,int *,int *,int *,int *) ;
 int fops_x8 ;
 int fops_x8_ro ;
 int fops_x8_wo ;

struct dentry *debugfs_create_x8(const char *name, umode_t mode,
     struct dentry *parent, u8 *value)
{
 return debugfs_create_mode_unsafe(name, mode, parent, value, &fops_x8,
       &fops_x8_ro, &fops_x8_wo);
}
