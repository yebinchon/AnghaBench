
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esas2r_sas_nvram {int dev_wait_time; int dev_wait_count; } ;
struct TYPE_2__ {int * interrupt_cx; } ;
struct esas2r_adapter {int disc_wait_time; int disc_wait_cnt; scalar_t__ prev_dev_cnt; int flags; TYPE_1__ general_req; int disc_start_time; int flags2; struct esas2r_sas_nvram* nvram; } ;


 int AF2_DEV_CNT_OK ;
 int AF2_DEV_SCAN ;
 int AF_CHPRST_DETECTED ;
 int AF_DISC_IN_PROG ;
 int AF_POWER_MGT ;
 int ESAS2R_MAX_TARGETS ;
 int clear_bit (int ,int *) ;
 int esas2r_disc_check_complete (struct esas2r_adapter*) ;
 int esas2r_hdebug (char*) ;
 int esas2r_trace (char*,int) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_disc_initialize(struct esas2r_adapter *a)
{
 struct esas2r_sas_nvram *nvr = a->nvram;

 esas2r_trace_enter();

 clear_bit(AF_DISC_IN_PROG, &a->flags);
 clear_bit(AF2_DEV_SCAN, &a->flags2);
 clear_bit(AF2_DEV_CNT_OK, &a->flags2);

 a->disc_start_time = jiffies_to_msecs(jiffies);
 a->disc_wait_time = nvr->dev_wait_time * 1000;
 a->disc_wait_cnt = nvr->dev_wait_count;

 if (a->disc_wait_cnt > ESAS2R_MAX_TARGETS)
  a->disc_wait_cnt = ESAS2R_MAX_TARGETS;







 esas2r_hdebug("starting discovery...");

 a->general_req.interrupt_cx = ((void*)0);

 if (test_bit(AF_CHPRST_DETECTED, &a->flags) ||
     test_bit(AF_POWER_MGT, &a->flags)) {
  if (a->prev_dev_cnt == 0) {



   a->disc_wait_time = 0;
  } else {







   a->disc_wait_cnt = a->prev_dev_cnt;






   if (a->disc_wait_time < 15000)
    a->disc_wait_time = 15000;
  }
 }

 esas2r_trace("disc wait count: %d", a->disc_wait_cnt);
 esas2r_trace("disc wait time: %d", a->disc_wait_time);

 if (a->disc_wait_time == 0)
  esas2r_disc_check_complete(a);

 esas2r_trace_exit();
}
