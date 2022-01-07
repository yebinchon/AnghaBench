
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSSWARN (char*) ;
 int data_lock ;
 int extra_info_update_ongoing () ;
 int extra_updated_completion ;
 int init_completion (int *) ;
 unsigned long msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static void wait_pending_extra_info_updates(void)
{
 bool updating;
 unsigned long flags;
 unsigned long t;
 int r;

 spin_lock_irqsave(&data_lock, flags);

 updating = extra_info_update_ongoing();

 if (!updating) {
  spin_unlock_irqrestore(&data_lock, flags);
  return;
 }

 init_completion(&extra_updated_completion);

 spin_unlock_irqrestore(&data_lock, flags);

 t = msecs_to_jiffies(500);
 r = wait_for_completion_timeout(&extra_updated_completion, t);
 if (r == 0)
  DSSWARN("timeout in wait_pending_extra_info_updates\n");
}
