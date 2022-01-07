
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {scalar_t__ id; struct watchdog_core_data* wd_data; int status; } ;
struct watchdog_core_data {int kref; int work; int timer; int lock; int * wdd; int cdev; } ;


 int WDOG_STOP_ON_UNREGISTER ;
 int cdev_del (int *) ;
 int hrtimer_cancel (int *) ;
 int kref_put (int *,int ) ;
 int kthread_cancel_work_sync (int *) ;
 int misc_deregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * old_wd_data ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;
 int watchdog_core_data_release ;
 int watchdog_miscdev ;
 int watchdog_stop (struct watchdog_device*) ;

__attribute__((used)) static void watchdog_cdev_unregister(struct watchdog_device *wdd)
{
 struct watchdog_core_data *wd_data = wdd->wd_data;

 cdev_del(&wd_data->cdev);
 if (wdd->id == 0) {
  misc_deregister(&watchdog_miscdev);
  old_wd_data = ((void*)0);
 }

 if (watchdog_active(wdd) &&
     test_bit(WDOG_STOP_ON_UNREGISTER, &wdd->status)) {
  watchdog_stop(wdd);
 }

 mutex_lock(&wd_data->lock);
 wd_data->wdd = ((void*)0);
 wdd->wd_data = ((void*)0);
 mutex_unlock(&wd_data->lock);

 hrtimer_cancel(&wd_data->timer);
 kthread_cancel_work_sync(&wd_data->work);

 kref_put(&wd_data->kref, watchdog_core_data_release);
}
