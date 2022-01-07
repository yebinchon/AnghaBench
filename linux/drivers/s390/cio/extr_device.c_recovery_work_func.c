
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int CIO_MSG_EVENT (int,char*) ;
 int HZ ;
 int bus_for_each_dev (int *,int *,int*,int ) ;
 int ccw_bus_type ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int recovery_check ;
 int* recovery_delay ;
 int recovery_lock ;
 int recovery_phase ;
 int recovery_timer ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int timer_pending (int *) ;

__attribute__((used)) static void recovery_work_func(struct work_struct *unused)
{
 int redo = 0;

 bus_for_each_dev(&ccw_bus_type, ((void*)0), &redo, recovery_check);
 if (redo) {
  spin_lock_irq(&recovery_lock);
  if (!timer_pending(&recovery_timer)) {
   if (recovery_phase < ARRAY_SIZE(recovery_delay) - 1)
    recovery_phase++;
   mod_timer(&recovery_timer, jiffies +
      recovery_delay[recovery_phase] * HZ);
  }
  spin_unlock_irq(&recovery_lock);
 } else
  CIO_MSG_EVENT(3, "recovery: end\n");
}
