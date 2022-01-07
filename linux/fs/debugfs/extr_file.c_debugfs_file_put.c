
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_fsdata; } ;
struct debugfs_fsdata {int active_users_drained; int active_users; } ;


 struct debugfs_fsdata* READ_ONCE (int ) ;
 int complete (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void debugfs_file_put(struct dentry *dentry)
{
 struct debugfs_fsdata *fsd = READ_ONCE(dentry->d_fsdata);

 if (refcount_dec_and_test(&fsd->active_users))
  complete(&fsd->active_users_drained);
}
