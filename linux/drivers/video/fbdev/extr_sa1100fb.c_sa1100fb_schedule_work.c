
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sa1100fb_info {scalar_t__ task_state; int task; } ;


 scalar_t__ C_DISABLE ;
 scalar_t__ C_ENABLE ;
 scalar_t__ C_REENABLE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int schedule_work (int *) ;

__attribute__((used)) static inline void sa1100fb_schedule_work(struct sa1100fb_info *fbi, u_int state)
{
 unsigned long flags;

 local_irq_save(flags);
 if (fbi->task_state == C_ENABLE && state == C_REENABLE)
  state = (u_int) -1;
 if (fbi->task_state == C_DISABLE && state == C_ENABLE)
  state = C_REENABLE;

 if (state != (u_int)-1) {
  fbi->task_state = state;
  schedule_work(&fbi->task);
 }
 local_irq_restore(flags);
}
