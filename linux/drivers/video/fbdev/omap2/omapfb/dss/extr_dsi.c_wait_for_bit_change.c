
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsi_reg {int dummy; } ;
typedef int ktime_t ;


 int HRTIMER_MODE_REL ;
 int REG_GET (struct platform_device*,struct dsi_reg const,int,int) ;
 int TASK_UNINTERRUPTIBLE ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int ns_to_ktime (int) ;
 int schedule_hrtimeout (int *,int ) ;
 int set_current_state (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static inline int wait_for_bit_change(struct platform_device *dsidev,
  const struct dsi_reg idx, int bitnum, int value)
{
 unsigned long timeout;
 ktime_t wait;
 int t;


 t = 100;
 while (t-- > 0) {
  if (REG_GET(dsidev, idx, bitnum, bitnum) == value)
   return value;
 }


 timeout = jiffies + msecs_to_jiffies(500);
 while (time_before(jiffies, timeout)) {
  if (REG_GET(dsidev, idx, bitnum, bitnum) == value)
   return value;

  wait = ns_to_ktime(1000 * 1000);
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_hrtimeout(&wait, HRTIMER_MODE_REL);
 }

 return !value;
}
