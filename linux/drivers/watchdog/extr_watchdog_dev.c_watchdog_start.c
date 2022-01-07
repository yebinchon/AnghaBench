
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int status; TYPE_1__* ops; struct watchdog_core_data* wd_data; } ;
struct watchdog_core_data {int last_keepalive; int status; } ;
typedef int ktime_t ;
struct TYPE_2__ {int (* ping ) (struct watchdog_device*) ;int (* start ) (struct watchdog_device*) ;} ;


 int WDOG_ACTIVE ;
 int _WDOG_KEEPALIVE ;
 int ktime_get () ;
 int set_bit (int ,int *) ;
 int stub1 (struct watchdog_device*) ;
 int stub2 (struct watchdog_device*) ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;
 scalar_t__ watchdog_hw_running (struct watchdog_device*) ;
 int watchdog_update_worker (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_start(struct watchdog_device *wdd)
{
 struct watchdog_core_data *wd_data = wdd->wd_data;
 ktime_t started_at;
 int err;

 if (watchdog_active(wdd))
  return 0;

 set_bit(_WDOG_KEEPALIVE, &wd_data->status);

 started_at = ktime_get();
 if (watchdog_hw_running(wdd) && wdd->ops->ping)
  err = wdd->ops->ping(wdd);
 else
  err = wdd->ops->start(wdd);
 if (err == 0) {
  set_bit(WDOG_ACTIVE, &wdd->status);
  wd_data->last_keepalive = started_at;
  watchdog_update_worker(wdd);
 }

 return err;
}
