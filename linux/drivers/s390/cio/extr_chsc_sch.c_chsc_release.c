
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int dbf ;
struct TYPE_5__ {int completion; } ;


 int CHSC_LOG (int ,char*) ;
 int EINPROGRESS ;
 int atomic_inc (int *) ;
 int chsc_async (int *,TYPE_1__*) ;
 int chsc_examine_irb (TYPE_1__*) ;
 int chsc_lock ;
 int chsc_log_command (int *) ;
 int chsc_ready_for_use ;
 int free_page (unsigned long) ;
 int init_completion (int *) ;
 int kfree (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * on_close_chsc_area ;
 int on_close_mutex ;
 TYPE_1__* on_close_request ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int chsc_release(struct inode *inode, struct file *filp)
{
 char dbf[13];
 int ret;

 mutex_lock(&on_close_mutex);
 if (!on_close_chsc_area)
  goto out_unlock;
 init_completion(&on_close_request->completion);
 CHSC_LOG(0, "on_close");
 chsc_log_command(on_close_chsc_area);
 spin_lock_irq(&chsc_lock);
 ret = chsc_async(on_close_chsc_area, on_close_request);
 spin_unlock_irq(&chsc_lock);
 if (ret == -EINPROGRESS) {
  wait_for_completion(&on_close_request->completion);
  ret = chsc_examine_irb(on_close_request);
 }
 snprintf(dbf, sizeof(dbf), "relret:%d", ret);
 CHSC_LOG(0, dbf);
 free_page((unsigned long)on_close_chsc_area);
 on_close_chsc_area = ((void*)0);
 kfree(on_close_request);
 on_close_request = ((void*)0);
out_unlock:
 mutex_unlock(&on_close_mutex);
 atomic_inc(&chsc_ready_for_use);
 return 0;
}
