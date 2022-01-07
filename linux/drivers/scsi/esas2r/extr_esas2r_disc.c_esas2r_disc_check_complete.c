
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esas2r_adapter {int disc_wait_time; int disc_start_time; scalar_t__ disc_wait_cnt; int flags; int mem_lock; int flags2; } ;


 int AF2_DEV_CNT_OK ;
 int AF2_DEV_SCAN ;
 int AF_DISC_IN_PROG ;
 int AF_DISC_PENDING ;
 int AF_DISC_POLLED ;
 int AF_PORT_CHANGE ;
 int DCDE_DEV_SCAN ;
 int clear_bit (int ,int *) ;
 int esas2r_disc_fix_curr_requests (struct esas2r_adapter*) ;
 int esas2r_disc_queue_event (struct esas2r_adapter*,int ) ;
 scalar_t__ esas2r_targ_db_get_tgt_cnt (struct esas2r_adapter*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_disc_check_complete(struct esas2r_adapter *a)
{
 unsigned long flags;

 esas2r_trace_enter();


 if (a->disc_wait_time) {
  u32 currtime = jiffies_to_msecs(jiffies);
  u32 time = currtime - a->disc_start_time;





  if (time < a->disc_wait_time
      && (esas2r_targ_db_get_tgt_cnt(a) < a->disc_wait_cnt
   || a->disc_wait_cnt == 0)) {

   if (time >= 3000
       && !test_and_set_bit(AF2_DEV_SCAN, &a->flags2)) {
    spin_lock_irqsave(&a->mem_lock, flags);
    esas2r_disc_queue_event(a, DCDE_DEV_SCAN);
    spin_unlock_irqrestore(&a->mem_lock, flags);
   }

   esas2r_trace_exit();
   return;
  }





  if (!test_and_set_bit(AF2_DEV_CNT_OK, &a->flags2))
   a->disc_wait_time = time + 3000;


  if (!test_and_set_bit(AF2_DEV_SCAN, &a->flags2)) {
   spin_lock_irqsave(&a->mem_lock, flags);
   esas2r_disc_queue_event(a, DCDE_DEV_SCAN);
   spin_unlock_irqrestore(&a->mem_lock, flags);
   esas2r_trace_exit();
   return;
  }





  if (time < a->disc_wait_time) {
   esas2r_trace_exit();
   return;
  }
 } else {
  if (!test_and_set_bit(AF2_DEV_SCAN, &a->flags2)) {
   spin_lock_irqsave(&a->mem_lock, flags);
   esas2r_disc_queue_event(a, DCDE_DEV_SCAN);
   spin_unlock_irqrestore(&a->mem_lock, flags);
  }
 }


 a->disc_wait_time = 0;

 if (test_bit(AF_DISC_POLLED, &a->flags) &&
     test_bit(AF_DISC_IN_PROG, &a->flags)) {






 } else {





  esas2r_disc_fix_curr_requests(a);
  clear_bit(AF_DISC_PENDING, &a->flags);






  set_bit(AF_PORT_CHANGE, &a->flags);
 }

 esas2r_trace_exit();
}
