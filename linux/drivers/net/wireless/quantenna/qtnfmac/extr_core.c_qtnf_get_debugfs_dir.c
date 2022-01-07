
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* qtnf_debugfs_dir ;

struct dentry *qtnf_get_debugfs_dir(void)
{
 return qtnf_debugfs_dir;
}
