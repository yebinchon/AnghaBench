
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
typedef enum bp_state { ____Placeholder_bp_state } bp_state ;
struct TYPE_2__ {int schedule_delay; } ;


 int BP_DONE ;
 int BP_EAGAIN ;
 int GFP_BALLOON ;
 int HZ ;
 scalar_t__ balloon_is_inflated () ;
 int balloon_mutex ;
 TYPE_1__ balloon_stats ;
 int balloon_worker ;
 int cond_resched () ;
 long current_credit () ;
 int decrease_reservation (long,int ) ;
 int increase_reservation (long) ;
 long min (long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reserve_additional_memory () ;
 int schedule_delayed_work (int *,int) ;
 int si_mem_available () ;
 long totalreserve_pages ;
 int update_schedule (int) ;

__attribute__((used)) static void balloon_process(struct work_struct *work)
{
 enum bp_state state = BP_DONE;
 long credit;


 do {
  mutex_lock(&balloon_mutex);

  credit = current_credit();

  if (credit > 0) {
   if (balloon_is_inflated())
    state = increase_reservation(credit);
   else
    state = reserve_additional_memory();
  }

  if (credit < 0) {
   long n_pages;

   n_pages = min(-credit, si_mem_available());
   state = decrease_reservation(n_pages, GFP_BALLOON);
   if (state == BP_DONE && n_pages != -credit &&
       n_pages < totalreserve_pages)
    state = BP_EAGAIN;
  }

  state = update_schedule(state);

  mutex_unlock(&balloon_mutex);

  cond_resched();

 } while (credit && state == BP_DONE);


 if (state == BP_EAGAIN)
  schedule_delayed_work(&balloon_worker, balloon_stats.schedule_delay * HZ);
}
