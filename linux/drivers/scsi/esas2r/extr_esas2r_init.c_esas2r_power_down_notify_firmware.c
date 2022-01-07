
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esas2r_adapter {int dummy; } ;


 int DRBL_POWER_DOWN ;
 int MU_DOORBELL_IN ;
 int MU_DOORBELL_OUT ;
 int esas2r_hdebug (char*) ;
 int esas2r_read_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;

__attribute__((used)) static void esas2r_power_down_notify_firmware(struct esas2r_adapter *a)
{
 u32 starttime;
 u32 doorbell;

 esas2r_write_register_dword(a, MU_DOORBELL_IN, DRBL_POWER_DOWN);
 starttime = jiffies_to_msecs(jiffies);

 while (1) {
  doorbell = esas2r_read_register_dword(a, MU_DOORBELL_OUT);
  if (doorbell & DRBL_POWER_DOWN) {
   esas2r_write_register_dword(a, MU_DOORBELL_OUT,
          doorbell);
   break;
  }

  schedule_timeout_interruptible(msecs_to_jiffies(100));

  if ((jiffies_to_msecs(jiffies) - starttime) > 30000) {
   esas2r_hdebug("Timeout waiting for power down");
   break;
  }
 }
}
