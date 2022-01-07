
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esas2r_adapter {int prev_dev_cnt; int flags; int flags2; } ;


 int AF2_VDA_POWER_DOWN ;
 int AF_CHPRST_PENDING ;
 int AF_DEGRADED_MODE ;
 int AF_DISC_PENDING ;
 int AF_OS_RESET ;
 int AF_POWER_DOWN ;
 int AF_POWER_MGT ;
 int DRBL_MSG_IFC_DOWN ;
 int MU_DOORBELL_IN ;
 int MU_DOORBELL_OUT ;
 int esas2r_disable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_disable_heartbeat (struct esas2r_adapter*) ;
 int esas2r_hdebug (char*) ;
 int esas2r_power_down_notify_firmware (struct esas2r_adapter*) ;
 int esas2r_process_adapter_reset (struct esas2r_adapter*) ;
 int esas2r_read_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_targ_db_get_tgt_cnt (struct esas2r_adapter*) ;
 int esas2r_targ_db_remove_all (struct esas2r_adapter*,int) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_power_down(struct esas2r_adapter *a)
{
 set_bit(AF_POWER_MGT, &a->flags);
 set_bit(AF_POWER_DOWN, &a->flags);

 if (!test_bit(AF_DEGRADED_MODE, &a->flags)) {
  u32 starttime;
  u32 doorbell;







  esas2r_disable_chip_interrupts(a);
  esas2r_disable_heartbeat(a);


  esas2r_write_register_dword(a, MU_DOORBELL_IN,
         DRBL_MSG_IFC_DOWN);
  starttime = jiffies_to_msecs(jiffies);

  while (1) {
   doorbell =
    esas2r_read_register_dword(a, MU_DOORBELL_OUT);
   if (doorbell & DRBL_MSG_IFC_DOWN) {
    esas2r_write_register_dword(a, MU_DOORBELL_OUT,
           doorbell);
    break;
   }

   schedule_timeout_interruptible(msecs_to_jiffies(100));

   if ((jiffies_to_msecs(jiffies) - starttime) > 3000) {
    esas2r_hdebug(
     "timeout waiting for interface down");
    break;
   }
  }





  if (test_bit(AF2_VDA_POWER_DOWN, &a->flags2))
   esas2r_power_down_notify_firmware(a);
 }


 set_bit(AF_OS_RESET, &a->flags);
 set_bit(AF_DISC_PENDING, &a->flags);
 set_bit(AF_CHPRST_PENDING, &a->flags);

 esas2r_process_adapter_reset(a);


 a->prev_dev_cnt = esas2r_targ_db_get_tgt_cnt(a);
 esas2r_targ_db_remove_all(a, 0);
}
