
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; int timer_val; int minutes_mode; int lock; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int max_timeout ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 TYPE_1__ watchdog ;

__attribute__((used)) static int watchdog_set_timeout(int timeout)
{
 if (timeout <= 0
  || timeout > max_timeout) {
  pr_err("watchdog timeout out of range\n");
  return -EINVAL;
 }

 mutex_lock(&watchdog.lock);

 watchdog.timeout = timeout;
 if (timeout > 0xff) {
  watchdog.timer_val = DIV_ROUND_UP(timeout, 60);
  watchdog.minutes_mode = 1;
 } else {
  watchdog.timer_val = timeout;
  watchdog.minutes_mode = 0;
 }

 mutex_unlock(&watchdog.lock);

 return 0;
}
