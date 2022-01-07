
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef unsigned long uint16_t ;
struct TYPE_6__ {int init_done; } ;
struct TYPE_7__ {TYPE_1__ flags; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 scalar_t__ FSTATE_FX00_INITIALIZED ;
 unsigned long HZ ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 unsigned long jiffies ;
 int msleep (int) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,...) ;
 int ql_dbg_init ;
 int qlafx00_get_firmware_state (TYPE_2__*,scalar_t__*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int
qlafx00_fw_ready(scsi_qla_host_t *vha)
{
 int rval;
 unsigned long wtime;
 uint16_t wait_time;
 uint32_t state[5];

 rval = QLA_SUCCESS;

 wait_time = 10;


 wtime = jiffies + (wait_time * HZ);


 if (!vha->flags.init_done)
  ql_dbg(ql_dbg_init, vha, 0x013a,
      "Waiting for init to complete...\n");

 do {
  rval = qlafx00_get_firmware_state(vha, state);

  if (rval == QLA_SUCCESS) {
   if (state[0] == FSTATE_FX00_INITIALIZED) {
    ql_dbg(ql_dbg_init, vha, 0x013b,
        "fw_state=%x\n", state[0]);
    rval = QLA_SUCCESS;
     break;
   }
  }
  rval = QLA_FUNCTION_FAILED;

  if (time_after_eq(jiffies, wtime))
   break;


  msleep(500);

  ql_dbg(ql_dbg_init, vha, 0x013c,
      "fw_state=%x curr time=%lx.\n", state[0], jiffies);
 } while (1);


 if (rval)
  ql_dbg(ql_dbg_init, vha, 0x013d,
      "Firmware ready **** FAILED ****.\n");
 else
  ql_dbg(ql_dbg_init, vha, 0x013e,
      "Firmware ready **** SUCCESS ****.\n");

 return rval;
}
