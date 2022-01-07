
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int power_state_active_cnt ;
 int power_state_active_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void power_state_active_enable(void)
{
 unsigned long flags;

 spin_lock_irqsave(&power_state_active_lock, flags);
 power_state_active_cnt++;
 spin_unlock_irqrestore(&power_state_active_lock, flags);
}
