
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun {int dummy; } ;
struct fsg_common {scalar_t__ state; int thread_notifier; int filesem; struct fsg_lun** luns; int lock; int * thread_task; int running; } ;


 int ARRAY_SIZE (struct fsg_lun**) ;
 scalar_t__ FSG_STATE_TERMINATED ;
 int SIGINT ;
 int SIGKILL ;
 int SIGTERM ;
 int SIGUSR1 ;
 int allow_signal (int ) ;
 int complete_and_exit (int *,int ) ;
 int current ;
 scalar_t__ do_scsi_command (struct fsg_common*) ;
 int down_write (int *) ;
 scalar_t__ exception_in_progress (struct fsg_common*) ;
 scalar_t__ finish_reply (struct fsg_common*) ;
 int fsg_lun_close (struct fsg_lun*) ;
 scalar_t__ fsg_lun_is_open (struct fsg_lun*) ;
 scalar_t__ get_next_command (struct fsg_common*) ;
 int handle_exception (struct fsg_common*) ;
 int send_status (struct fsg_common*) ;
 int set_freezable () ;
 scalar_t__ signal_pending (int ) ;
 int sleep_thread (struct fsg_common*,int,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int fsg_main_thread(void *common_)
{
 struct fsg_common *common = common_;
 int i;





 allow_signal(SIGINT);
 allow_signal(SIGTERM);
 allow_signal(SIGKILL);
 allow_signal(SIGUSR1);


 set_freezable();


 while (common->state != FSG_STATE_TERMINATED) {
  if (exception_in_progress(common) || signal_pending(current)) {
   handle_exception(common);
   continue;
  }

  if (!common->running) {
   sleep_thread(common, 1, ((void*)0));
   continue;
  }

  if (get_next_command(common) || exception_in_progress(common))
   continue;
  if (do_scsi_command(common) || exception_in_progress(common))
   continue;
  if (finish_reply(common) || exception_in_progress(common))
   continue;
  send_status(common);
 }

 spin_lock_irq(&common->lock);
 common->thread_task = ((void*)0);
 spin_unlock_irq(&common->lock);



 down_write(&common->filesem);
 for (i = 0; i < ARRAY_SIZE(common->luns); i++) {
  struct fsg_lun *curlun = common->luns[i];

  if (curlun && fsg_lun_is_open(curlun))
   fsg_lun_close(curlun);
 }
 up_write(&common->filesem);


 complete_and_exit(&common->thread_notifier, 0);
}
