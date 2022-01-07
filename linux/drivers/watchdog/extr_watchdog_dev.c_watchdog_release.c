
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {int id; TYPE_1__* info; int status; } ;
struct TYPE_4__ {int owner; } ;
struct watchdog_core_data {int kref; TYPE_2__ cdev; int lock; int status; struct watchdog_device* wdd; } ;
struct inode {int dummy; } ;
struct file {struct watchdog_core_data* private_data; } ;
struct TYPE_3__ {int options; } ;


 int EBUSY ;
 int WDIOF_MAGICCLOSE ;
 int WDOG_ACTIVE ;
 int _WDOG_ALLOW_RELEASE ;
 int _WDOG_DEV_OPEN ;
 int clear_bit (int ,int *) ;
 int kref_put (int *,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_crit (char*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int watchdog_core_data_release ;
 scalar_t__ watchdog_hw_running (struct watchdog_device*) ;
 int watchdog_ping (struct watchdog_device*) ;
 int watchdog_stop (struct watchdog_device*) ;
 int watchdog_update_worker (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_release(struct inode *inode, struct file *file)
{
 struct watchdog_core_data *wd_data = file->private_data;
 struct watchdog_device *wdd;
 int err = -EBUSY;
 bool running;

 mutex_lock(&wd_data->lock);

 wdd = wd_data->wdd;
 if (!wdd)
  goto done;






 if (!test_bit(WDOG_ACTIVE, &wdd->status))
  err = 0;
 else if (test_and_clear_bit(_WDOG_ALLOW_RELEASE, &wd_data->status) ||
   !(wdd->info->options & WDIOF_MAGICCLOSE))
  err = watchdog_stop(wdd);


 if (err < 0) {
  pr_crit("watchdog%d: watchdog did not stop!\n", wdd->id);
  watchdog_ping(wdd);
 }

 watchdog_update_worker(wdd);


 clear_bit(_WDOG_DEV_OPEN, &wd_data->status);

done:
 running = wdd && watchdog_hw_running(wdd);
 mutex_unlock(&wd_data->lock);





 if (!running) {
  module_put(wd_data->cdev.owner);
  kref_put(&wd_data->kref, watchdog_core_data_release);
 }
 return 0;
}
