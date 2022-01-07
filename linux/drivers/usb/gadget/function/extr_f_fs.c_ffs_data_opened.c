
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_data {scalar_t__ state; int opened; int ref; } ;


 int ENTER () ;
 scalar_t__ FFS_CLOSING ;
 scalar_t__ FFS_DEACTIVATED ;
 int atomic_add_return (int,int *) ;
 int ffs_data_reset (struct ffs_data*) ;
 int refcount_inc (int *) ;

__attribute__((used)) static void ffs_data_opened(struct ffs_data *ffs)
{
 ENTER();

 refcount_inc(&ffs->ref);
 if (atomic_add_return(1, &ffs->opened) == 1 &&
   ffs->state == FFS_DEACTIVATED) {
  ffs->state = FFS_CLOSING;
  ffs_data_reset(ffs);
 }
}
