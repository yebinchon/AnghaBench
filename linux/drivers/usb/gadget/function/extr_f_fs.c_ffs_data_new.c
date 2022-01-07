
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int can_stall; int waitq; } ;
struct ffs_data {TYPE_1__ ev; int ep0req_completion; int wait; int eps_lock; int mutex; int state; int opened; int ref; int io_completion_wq; } ;


 int ENTER () ;
 int FFS_READ_DESCRIPTORS ;
 int GFP_KERNEL ;
 int alloc_ordered_workqueue (char*,int ,char const*) ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ffs_data*) ;
 struct ffs_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ffs_data *ffs_data_new(const char *dev_name)
{
 struct ffs_data *ffs = kzalloc(sizeof *ffs, GFP_KERNEL);
 if (unlikely(!ffs))
  return ((void*)0);

 ENTER();

 ffs->io_completion_wq = alloc_ordered_workqueue("%s", 0, dev_name);
 if (!ffs->io_completion_wq) {
  kfree(ffs);
  return ((void*)0);
 }

 refcount_set(&ffs->ref, 1);
 atomic_set(&ffs->opened, 0);
 ffs->state = FFS_READ_DESCRIPTORS;
 mutex_init(&ffs->mutex);
 spin_lock_init(&ffs->eps_lock);
 init_waitqueue_head(&ffs->ev.waitq);
 init_waitqueue_head(&ffs->wait);
 init_completion(&ffs->ep0req_completion);


 ffs->ev.can_stall = 1;

 return ffs;
}
