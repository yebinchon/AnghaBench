
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {scalar_t__ chip_uptime; scalar_t__ int_mask; int prev_dev_cnt; int flags; int chip_init_time; } ;


 int AF_BUSRST_DETECTED ;
 int AF_BUSRST_NEEDED ;
 int AF_BUSRST_PENDING ;
 int AF_CHPRST_NEEDED ;
 int AF_CHPRST_PENDING ;
 int AF_CHPRST_STARTED ;
 int AF_DEGRADED_MODE ;
 int AF_DISABLED ;
 int AF_DISC_PENDING ;
 int AF_FIRST_INIT ;
 int AF_POWER_MGT ;
 scalar_t__ ESAS2R_CHP_UPTIME_CNT ;
 scalar_t__ ESAS2R_CHP_UPTIME_MAX ;
 int ESAS2R_LOG_CRIT ;
 int clear_bit (int ,int *) ;
 int esas2r_disable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_hdebug (char*) ;
 int esas2r_is_adapter_present (struct esas2r_adapter*) ;
 int esas2r_log (int ,char*) ;
 int esas2r_process_adapter_reset (struct esas2r_adapter*) ;
 int esas2r_reset_chip (struct esas2r_adapter*) ;
 int esas2r_targ_db_get_tgt_cnt (struct esas2r_adapter*) ;
 int esas2r_targ_db_remove_all (struct esas2r_adapter*,int) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void esas2r_chip_rst_needed_during_tasklet(struct esas2r_adapter *a)
{

 clear_bit(AF_CHPRST_NEEDED, &a->flags);
 clear_bit(AF_BUSRST_NEEDED, &a->flags);
 clear_bit(AF_BUSRST_DETECTED, &a->flags);
 clear_bit(AF_BUSRST_PENDING, &a->flags);
 if (!esas2r_is_adapter_present(a) || (a->chip_uptime >=
           ESAS2R_CHP_UPTIME_MAX)) {
  esas2r_hdebug("*** adapter disabled ***");
  set_bit(AF_DEGRADED_MODE, &a->flags);
  set_bit(AF_DISABLED, &a->flags);
  clear_bit(AF_CHPRST_PENDING, &a->flags);
  clear_bit(AF_DISC_PENDING, &a->flags);

  esas2r_disable_chip_interrupts(a);
  a->int_mask = 0;
  esas2r_process_adapter_reset(a);

  esas2r_log(ESAS2R_LOG_CRIT,
      "Adapter disabled because of hardware failure");
 } else {
  bool alrdyrst = test_and_set_bit(AF_CHPRST_STARTED, &a->flags);

  if (!alrdyrst)




   esas2r_disable_chip_interrupts(a);

  if ((test_bit(AF_POWER_MGT, &a->flags)) &&
      !test_bit(AF_FIRST_INIT, &a->flags) && !alrdyrst) {




  } else {
   esas2r_hdebug("*** resetting chip ***");
   esas2r_reset_chip(a);
  }


  a->chip_uptime += ESAS2R_CHP_UPTIME_CNT;
  a->chip_init_time = jiffies_to_msecs(jiffies);
  if (!test_bit(AF_POWER_MGT, &a->flags)) {
   esas2r_process_adapter_reset(a);

   if (!alrdyrst) {

    a->prev_dev_cnt =
     esas2r_targ_db_get_tgt_cnt(a);
    esas2r_targ_db_remove_all(a, 0);
   }
  }

  a->int_mask = 0;
 }
}
