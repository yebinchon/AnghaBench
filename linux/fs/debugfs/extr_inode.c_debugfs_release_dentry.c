
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {void* d_fsdata; } ;


 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ;
 int kfree (void*) ;

__attribute__((used)) static void debugfs_release_dentry(struct dentry *dentry)
{
 void *fsd = dentry->d_fsdata;

 if (!((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT))
  kfree(dentry->d_fsdata);
}
