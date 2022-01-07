
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;
typedef size_t ssize_t ;
typedef unsigned long long ktime_t ;


 size_t EINVAL ;
 int HRTIMER_MODE_ABS ;
 int ap_poll_timer ;
 int ap_poll_timer_lock ;
 int hrtimer_cancel (int *) ;
 int hrtimer_set_expires (int *,unsigned long long) ;
 int hrtimer_start_expires (int *,int ) ;
 unsigned long long poll_timeout ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sscanf (char const*,char*,unsigned long long*) ;

__attribute__((used)) static ssize_t poll_timeout_store(struct bus_type *bus, const char *buf,
      size_t count)
{
 unsigned long long time;
 ktime_t hr_time;


 if (sscanf(buf, "%llu\n", &time) != 1 || time < 1 ||
     time > 120000000000ULL)
  return -EINVAL;
 poll_timeout = time;
 hr_time = poll_timeout;

 spin_lock_bh(&ap_poll_timer_lock);
 hrtimer_cancel(&ap_poll_timer);
 hrtimer_set_expires(&ap_poll_timer, hr_time);
 hrtimer_start_expires(&ap_poll_timer, HRTIMER_MODE_ABS);
 spin_unlock_bh(&ap_poll_timer_lock);

 return count;
}
