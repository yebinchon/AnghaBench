
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ next_timeslot ;


 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 unsigned long jiffies ;
 unsigned long lb_interval_jiffies ;
 int lb_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int lb_throttle(void)
{
 static unsigned long last_access;
 unsigned long now, next_timeslot;
 long delay;
 int ret = 0;

 mutex_lock(&lb_mutex);

 now = jiffies;
 next_timeslot = last_access + lb_interval_jiffies;

 if (time_before(now, next_timeslot)) {
  delay = (long)(next_timeslot) - (long)now;
  set_current_state(TASK_INTERRUPTIBLE);
  if (schedule_timeout(delay) > 0) {

   ret = -EINTR;
   goto out;
  }
  now = jiffies;
 }

 last_access = now;
out:
 mutex_unlock(&lb_mutex);

 return ret;
}
