
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int) ;
 int cio_work_q ;
 int css_eval_scheduled ;
 int idset_fill (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int slow_path_work ;
 int slow_subchannel_lock ;
 int slow_subchannel_set ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void css_schedule_eval_all(void)
{
 unsigned long flags;

 spin_lock_irqsave(&slow_subchannel_lock, flags);
 idset_fill(slow_subchannel_set);
 atomic_set(&css_eval_scheduled, 1);
 queue_delayed_work(cio_work_q, &slow_path_work, 0);
 spin_unlock_irqrestore(&slow_subchannel_lock, flags);
}
