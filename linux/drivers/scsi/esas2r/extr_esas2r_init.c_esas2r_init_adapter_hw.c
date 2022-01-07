
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct esas2r_request {int dummy; } ;
struct esas2r_adapter {scalar_t__ fw_version; scalar_t__ disc_start_time; int disable_cnt; int flags; int int_mask; scalar_t__* fw_rev; int * image_type; int * flash_rev; struct esas2r_request* first_ae_req; } ;


 int AF_CHPRST_DETECTED ;
 int AF_CHPRST_PENDING ;
 int AF_DEGRADED_MODE ;
 int AF_DISC_PENDING ;
 int AF_DISC_POLLED ;
 int AF_FIRST_INIT ;
 int AF_NVR_VALID ;
 int AF_TASKLET_SCHEDULED ;
 int ESAS2R_INT_STS_MASK ;
 int ESAS2R_LOG_WARN ;
 scalar_t__ HIBYTE (int ) ;
 int HIWORD (scalar_t__) ;
 scalar_t__ LOBYTE (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int esas2r_disc_check_for_work (struct esas2r_adapter*) ;
 int esas2r_disc_initialize (struct esas2r_adapter*) ;
 int esas2r_disc_start_waiting (struct esas2r_adapter*) ;
 int esas2r_do_deferred_processes (struct esas2r_adapter*) ;
 int esas2r_do_tasklet_tasks (struct esas2r_adapter*) ;
 int esas2r_enable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_enable_heartbeat (struct esas2r_adapter*) ;
 int esas2r_hdebug (char*,scalar_t__*) ;
 int esas2r_init_msgs (struct esas2r_adapter*) ;
 scalar_t__ esas2r_is_tasklet_pending (struct esas2r_adapter*) ;
 int esas2r_log (int ,char*) ;
 int esas2r_nvram_read_direct (struct esas2r_adapter*) ;
 int esas2r_read_flash_rev (struct esas2r_adapter*) ;
 int esas2r_read_image_type (struct esas2r_adapter*) ;
 int esas2r_set_degraded_mode (struct esas2r_adapter*,char*) ;
 int esas2r_start_ae_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_targ_db_report_changes (struct esas2r_adapter*) ;
 int esas2r_timer_tick (struct esas2r_adapter*) ;
 int jiffies ;
 scalar_t__ jiffies_to_msecs (int ) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ num_ae_requests ;
 int schedule_timeout_interruptible (int ) ;
 int set_bit (int ,int *) ;
 int sprintf (scalar_t__*,char*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

bool esas2r_init_adapter_hw(struct esas2r_adapter *a, bool init_poll)
{
 bool rslt = 0;
 struct esas2r_request *rq;
 u32 i;

 if (test_bit(AF_DEGRADED_MODE, &a->flags))
  goto exit;

 if (!test_bit(AF_NVR_VALID, &a->flags)) {
  if (!esas2r_nvram_read_direct(a))
   esas2r_log(ESAS2R_LOG_WARN,
       "invalid/missing NVRAM parameters");
 }

 if (!esas2r_init_msgs(a)) {
  esas2r_set_degraded_mode(a, "init messages failed");
  goto exit;
 }


 clear_bit(AF_DEGRADED_MODE, &a->flags);
 clear_bit(AF_CHPRST_PENDING, &a->flags);


 for (i = 0, rq = a->first_ae_req; i < num_ae_requests; i++, rq++)
  esas2r_start_ae_request(a, rq);

 if (!a->flash_rev[0])
  esas2r_read_flash_rev(a);

 if (!a->image_type[0])
  esas2r_read_image_type(a);

 if (a->fw_version == 0)
  a->fw_rev[0] = 0;
 else
  sprintf(a->fw_rev, "%1d.%02d",
   (int)LOBYTE(HIWORD(a->fw_version)),
   (int)HIBYTE(HIWORD(a->fw_version)));

 esas2r_hdebug("firmware revision: %s", a->fw_rev);

 if (test_bit(AF_CHPRST_DETECTED, &a->flags)
     && (test_bit(AF_FIRST_INIT, &a->flags))) {
  esas2r_enable_chip_interrupts(a);
  return 1;
 }


 esas2r_disc_initialize(a);
 if (init_poll) {
  u32 currtime = a->disc_start_time;
  u32 nexttick = 100;
  u32 deltatime;





  set_bit(AF_TASKLET_SCHEDULED, &a->flags);
  set_bit(AF_DISC_POLLED, &a->flags);






  if (test_bit(AF_FIRST_INIT, &a->flags))
   atomic_dec(&a->disable_cnt);

  while (test_bit(AF_DISC_PENDING, &a->flags)) {
   schedule_timeout_interruptible(msecs_to_jiffies(100));
   deltatime = jiffies_to_msecs(jiffies) - currtime;
   currtime += deltatime;







   if (!test_bit(AF_CHPRST_PENDING, &a->flags))
    esas2r_disc_check_for_work(a);


   if (nexttick <= deltatime) {


    nexttick += 100;
    esas2r_timer_tick(a);
   }

   if (nexttick > deltatime)
    nexttick -= deltatime;


   if (esas2r_is_tasklet_pending(a))
    esas2r_do_tasklet_tasks(a);

  }

  if (test_bit(AF_FIRST_INIT, &a->flags))
   atomic_inc(&a->disable_cnt);

  clear_bit(AF_DISC_POLLED, &a->flags);
  clear_bit(AF_TASKLET_SCHEDULED, &a->flags);
 }


 esas2r_targ_db_report_changes(a);
 esas2r_disc_start_waiting(a);


 a->int_mask = ESAS2R_INT_STS_MASK;
 esas2r_enable_chip_interrupts(a);
 esas2r_enable_heartbeat(a);
 rslt = 1;

exit:





 if (test_bit(AF_CHPRST_DETECTED, &a->flags) &&
     test_bit(AF_FIRST_INIT, &a->flags)) {





  if (!rslt)
   clear_bit(AF_CHPRST_PENDING, &a->flags);
 } else {

  if (!rslt) {
   clear_bit(AF_CHPRST_PENDING, &a->flags);
   clear_bit(AF_DISC_PENDING, &a->flags);
  }



  if (test_bit(AF_FIRST_INIT, &a->flags)) {
   clear_bit(AF_FIRST_INIT, &a->flags);

   if (atomic_dec_return(&a->disable_cnt) == 0)
    esas2r_do_deferred_processes(a);
  }
 }

 return rslt;
}
