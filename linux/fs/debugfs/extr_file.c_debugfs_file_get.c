
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_fsdata; } ;
struct debugfs_fsdata {int active_users; int active_users_drained; void* real_fops; } ;


 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* READ_ONCE (int ) ;
 void* cmpxchg (int *,void*,struct debugfs_fsdata*) ;
 scalar_t__ d_unlinked (struct dentry*) ;
 int init_completion (int *) ;
 int kfree (struct debugfs_fsdata*) ;
 struct debugfs_fsdata* kmalloc (int,int ) ;
 int refcount_inc_not_zero (int *) ;
 int refcount_set (int *,int) ;

int debugfs_file_get(struct dentry *dentry)
{
 struct debugfs_fsdata *fsd;
 void *d_fsd;

 d_fsd = READ_ONCE(dentry->d_fsdata);
 if (!((unsigned long)d_fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)) {
  fsd = d_fsd;
 } else {
  fsd = kmalloc(sizeof(*fsd), GFP_KERNEL);
  if (!fsd)
   return -ENOMEM;

  fsd->real_fops = (void *)((unsigned long)d_fsd &
     ~DEBUGFS_FSDATA_IS_REAL_FOPS_BIT);
  refcount_set(&fsd->active_users, 1);
  init_completion(&fsd->active_users_drained);
  if (cmpxchg(&dentry->d_fsdata, d_fsd, fsd) != d_fsd) {
   kfree(fsd);
   fsd = READ_ONCE(dentry->d_fsdata);
  }
 }
 if (d_unlinked(dentry))
  return -EIO;

 if (!refcount_inc_not_zero(&fsd->active_users))
  return -EIO;

 return 0;
}
