
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {scalar_t__ state; scalar_t__ free_storage_on_release; int fsg_num_buffers; int buffhds; int dev; struct fsg_lun** luns; int thread_notifier; } ;
struct fsg_common {scalar_t__ state; scalar_t__ free_storage_on_release; int fsg_num_buffers; int buffhds; int dev; struct fsg_common** luns; int thread_notifier; } ;


 int ARRAY_SIZE (struct fsg_lun**) ;
 int FSG_STATE_EXIT ;
 scalar_t__ FSG_STATE_TERMINATED ;
 int _fsg_common_free_buffers (int ,int ) ;
 scalar_t__ device_is_registered (int *) ;
 int device_unregister (int *) ;
 int fsg_lun_close (struct fsg_lun*) ;
 int kfree (struct fsg_lun*) ;
 int raise_exception (struct fsg_lun*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void fsg_common_release(struct fsg_common *common)
{
 int i;


 if (common->state != FSG_STATE_TERMINATED) {
  raise_exception(common, FSG_STATE_EXIT);
  wait_for_completion(&common->thread_notifier);
 }

 for (i = 0; i < ARRAY_SIZE(common->luns); ++i) {
  struct fsg_lun *lun = common->luns[i];
  if (!lun)
   continue;
  fsg_lun_close(lun);
  if (device_is_registered(&lun->dev))
   device_unregister(&lun->dev);
  kfree(lun);
 }

 _fsg_common_free_buffers(common->buffhds, common->fsg_num_buffers);
 if (common->free_storage_on_release)
  kfree(common);
}
