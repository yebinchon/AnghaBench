
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_fsdata; } ;
struct debugfs_fsdata {int active_users_drained; int active_users; } ;


 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ;
 struct debugfs_fsdata* READ_ONCE (int ) ;
 int refcount_dec_and_test (int *) ;
 int smp_mb () ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void __debugfs_file_removed(struct dentry *dentry)
{
 struct debugfs_fsdata *fsd;







 smp_mb();
 fsd = READ_ONCE(dentry->d_fsdata);
 if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)
  return;
 if (!refcount_dec_and_test(&fsd->active_users))
  wait_for_completion(&fsd->active_users_drained);
}
