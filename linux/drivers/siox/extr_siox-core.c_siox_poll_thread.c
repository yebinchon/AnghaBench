
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {unsigned long last_poll; unsigned long poll_interval; scalar_t__ active; int dev; } ;


 long MAX_SCHEDULE_TIMEOUT ;
 int TASK_IDLE ;
 int TASK_RUNNING ;
 int get_device (int *) ;
 long jiffies ;
 scalar_t__ kthread_should_stop () ;
 int put_device (int *) ;
 int schedule_timeout (long) ;
 int set_current_state (int ) ;
 int siox_master_lock (struct siox_master*) ;
 int siox_master_unlock (struct siox_master*) ;
 int siox_poll (struct siox_master*) ;
 scalar_t__ time_is_before_eq_jiffies (unsigned long) ;

__attribute__((used)) static int siox_poll_thread(void *data)
{
 struct siox_master *smaster = data;
 signed long timeout = 0;

 get_device(&smaster->dev);

 for (;;) {
  if (kthread_should_stop()) {
   put_device(&smaster->dev);
   return 0;
  }

  siox_master_lock(smaster);

  if (smaster->active) {
   unsigned long next_poll =
    smaster->last_poll + smaster->poll_interval;
   if (time_is_before_eq_jiffies(next_poll))
    siox_poll(smaster);

   timeout = smaster->poll_interval -
    (jiffies - smaster->last_poll);
  } else {
   timeout = MAX_SCHEDULE_TIMEOUT;
  }






  if (timeout > 0)
   set_current_state(TASK_IDLE);

  siox_master_unlock(smaster);

  if (timeout > 0)
   schedule_timeout(timeout);






  set_current_state(TASK_RUNNING);
 }
}
