
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_operations {int dummy; } ;
struct file {int dummy; } ;
struct debugfs_fsdata {struct file_operations const* real_fops; } ;
struct TYPE_2__ {struct debugfs_fsdata* d_fsdata; } ;


 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ;
 TYPE_1__* F_DENTRY (struct file const*) ;
 int WARN_ON (int) ;

const struct file_operations *debugfs_real_fops(const struct file *filp)
{
 struct debugfs_fsdata *fsd = F_DENTRY(filp)->d_fsdata;

 if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT) {




  WARN_ON(1);
  return ((void*)0);
 }

 return fsd->real_fops;
}
