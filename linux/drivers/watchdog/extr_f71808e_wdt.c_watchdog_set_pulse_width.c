
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int pulse_val; unsigned int pulse_mode; int lock; } ;


 int EINVAL ;
 scalar_t__ f71868 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 TYPE_1__ watchdog ;

__attribute__((used)) static int watchdog_set_pulse_width(unsigned int pw)
{
 int err = 0;
 unsigned int t1 = 25, t2 = 125, t3 = 5000;

 if (watchdog.type == f71868) {
  t1 = 30;
  t2 = 150;
  t3 = 6000;
 }

 mutex_lock(&watchdog.lock);

 if (pw <= 1) {
  watchdog.pulse_val = 0;
 } else if (pw <= t1) {
  watchdog.pulse_val = 1;
 } else if (pw <= t2) {
  watchdog.pulse_val = 2;
 } else if (pw <= t3) {
  watchdog.pulse_val = 3;
 } else {
  pr_err("pulse width out of range\n");
  err = -EINVAL;
  goto exit_unlock;
 }

 watchdog.pulse_mode = pw;

exit_unlock:
 mutex_unlock(&watchdog.lock);
 return err;
}
