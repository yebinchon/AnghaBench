
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esas2r_adapter {int flags; } ;


 int AF_CHPRST_PENDING ;
 int AF_DISC_PENDING ;
 int DRBL_FLASH_DONE ;
 int DRBL_FLASH_REQ ;
 int MU_DOORBELL_IN ;
 int MU_DOORBELL_OUT ;
 int MU_INTSTAT_DRBL ;
 int MU_INT_STATUS_OUT ;
 int esas2r_disable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_enable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_hdebug (char*) ;
 int esas2r_read_register_dword (struct esas2r_adapter*,int ) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool esas2r_flash_access(struct esas2r_adapter *a, u32 function)
{
 u32 starttime;
 u32 timeout;
 u32 intstat;
 u32 doorbell;


 if (function == DRBL_FLASH_REQ)
  esas2r_disable_chip_interrupts(a);


 esas2r_write_register_dword(a, MU_DOORBELL_IN, function);


 starttime = jiffies_to_msecs(jiffies);

 if (test_bit(AF_CHPRST_PENDING, &a->flags) ||
     test_bit(AF_DISC_PENDING, &a->flags))
  timeout = 40000;
 else
  timeout = 5000;

 while (1) {
  intstat = esas2r_read_register_dword(a, MU_INT_STATUS_OUT);

  if (intstat & MU_INTSTAT_DRBL) {

   doorbell =
    esas2r_read_register_dword(a, MU_DOORBELL_OUT);
   esas2r_write_register_dword(a, MU_DOORBELL_OUT,
          doorbell);
   if (doorbell & function)
    break;
  }

  schedule_timeout_interruptible(msecs_to_jiffies(100));

  if ((jiffies_to_msecs(jiffies) - starttime) > timeout) {






   if (function == DRBL_FLASH_REQ) {
    esas2r_hdebug("flash access timeout");
    esas2r_write_register_dword(a, MU_DOORBELL_IN,
           DRBL_FLASH_DONE);
    esas2r_enable_chip_interrupts(a);
   } else {
    esas2r_hdebug("flash release timeout");
   }

   return 0;
  }
 }


 if (function == DRBL_FLASH_DONE)
  esas2r_enable_chip_interrupts(a);

 return 1;
}
