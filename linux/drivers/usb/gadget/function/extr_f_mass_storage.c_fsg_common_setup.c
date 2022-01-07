
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int free_storage_on_release; int luns; int state; int fsg_wait; int io_wait; int thread_notifier; int lock; int filesem; } ;


 int ENOMEM ;
 struct fsg_common* ERR_PTR (int ) ;
 int FSG_STATE_TERMINATED ;
 int GFP_KERNEL ;
 int init_completion (int *) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 struct fsg_common* kzalloc (int,int ) ;
 int memset (int ,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct fsg_common *fsg_common_setup(struct fsg_common *common)
{
 if (!common) {
  common = kzalloc(sizeof(*common), GFP_KERNEL);
  if (!common)
   return ERR_PTR(-ENOMEM);
  common->free_storage_on_release = 1;
 } else {
  common->free_storage_on_release = 0;
 }
 init_rwsem(&common->filesem);
 spin_lock_init(&common->lock);
 init_completion(&common->thread_notifier);
 init_waitqueue_head(&common->io_wait);
 init_waitqueue_head(&common->fsg_wait);
 common->state = FSG_STATE_TERMINATED;
 memset(common->luns, 0, sizeof(common->luns));

 return common;
}
