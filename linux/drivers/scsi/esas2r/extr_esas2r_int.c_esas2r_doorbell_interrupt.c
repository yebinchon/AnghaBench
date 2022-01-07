
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esas2r_adapter {int flags2; int flags; } ;


 int AF2_COREDUMP_AVAIL ;
 int AF_BUSRST_DETECTED ;
 int AF_HEARTBEAT ;
 int DRBL_FORCE_INT ;
 int DRBL_FW_RESET ;
 int DRBL_PANIC_REASON_MASK ;
 int DRBL_RESET_BUS ;
 int ESAS2R_LOG_CRIT ;
 int MU_DOORBELL_OUT ;
 int clear_bit (int ,int *) ;
 int esas2r_hdebug (char*) ;
 int esas2r_local_reset_adapter (struct esas2r_adapter*) ;
 int esas2r_log (int ,char*) ;
 int esas2r_trace (char*,int) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void esas2r_doorbell_interrupt(struct esas2r_adapter *a, u32 doorbell)
{
 if (!(doorbell & DRBL_FORCE_INT)) {
  esas2r_trace_enter();
  esas2r_trace("doorbell: %x", doorbell);
 }


 esas2r_write_register_dword(a, MU_DOORBELL_OUT, doorbell);

 if (doorbell & DRBL_RESET_BUS)
  set_bit(AF_BUSRST_DETECTED, &a->flags);

 if (doorbell & DRBL_FORCE_INT)
  clear_bit(AF_HEARTBEAT, &a->flags);

 if (doorbell & DRBL_PANIC_REASON_MASK) {
  esas2r_hdebug("*** Firmware Panic ***");
  esas2r_log(ESAS2R_LOG_CRIT, "The firmware has panicked");
 }

 if (doorbell & DRBL_FW_RESET) {
  set_bit(AF2_COREDUMP_AVAIL, &a->flags2);
  esas2r_local_reset_adapter(a);
 }

 if (!(doorbell & DRBL_FORCE_INT))
  esas2r_trace_exit();
}
