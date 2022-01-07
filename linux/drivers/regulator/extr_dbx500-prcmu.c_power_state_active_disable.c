
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ power_state_active_cnt ;
 int power_state_active_lock ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int power_state_active_disable(void)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&power_state_active_lock, flags);
 if (power_state_active_cnt <= 0) {
  pr_err("power state: unbalanced enable/disable calls\n");
  ret = -EINVAL;
  goto out;
 }

 power_state_active_cnt--;
out:
 spin_unlock_irqrestore(&power_state_active_lock, flags);
 return ret;
}
