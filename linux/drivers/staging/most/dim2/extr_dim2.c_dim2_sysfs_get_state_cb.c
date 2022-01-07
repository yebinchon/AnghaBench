
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dim_get_lock_state () ;
 int dim_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool dim2_sysfs_get_state_cb(void)
{
 bool state;
 unsigned long flags;

 spin_lock_irqsave(&dim_lock, flags);
 state = dim_get_lock_state();
 spin_unlock_irqrestore(&dim_lock, flags);

 return state;
}
