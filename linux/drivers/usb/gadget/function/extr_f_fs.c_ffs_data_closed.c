
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_data {scalar_t__ setup_state; void* state; int opened; int * epfiles; int eps_count; scalar_t__ no_disconnect; } ;


 int ENTER () ;
 void* FFS_CLOSING ;
 void* FFS_DEACTIVATED ;
 scalar_t__ FFS_SETUP_PENDING ;
 int __ffs_ep0_stall (struct ffs_data*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ffs_data_put (struct ffs_data*) ;
 int ffs_data_reset (struct ffs_data*) ;
 int ffs_epfiles_destroy (int *,int ) ;

__attribute__((used)) static void ffs_data_closed(struct ffs_data *ffs)
{
 ENTER();

 if (atomic_dec_and_test(&ffs->opened)) {
  if (ffs->no_disconnect) {
   ffs->state = FFS_DEACTIVATED;
   if (ffs->epfiles) {
    ffs_epfiles_destroy(ffs->epfiles,
         ffs->eps_count);
    ffs->epfiles = ((void*)0);
   }
   if (ffs->setup_state == FFS_SETUP_PENDING)
    __ffs_ep0_stall(ffs);
  } else {
   ffs->state = FFS_CLOSING;
   ffs_data_reset(ffs);
  }
 }
 if (atomic_read(&ffs->opened) < 0) {
  ffs->state = FFS_CLOSING;
  ffs_data_reset(ffs);
 }

 ffs_data_put(ffs);
}
