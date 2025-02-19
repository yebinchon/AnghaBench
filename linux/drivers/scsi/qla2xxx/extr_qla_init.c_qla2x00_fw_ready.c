
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef unsigned long uint16_t ;
struct TYPE_12__ {scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {int retry_count; int login_timeout; TYPE_2__ flags; int r_a_tov; } ;
typedef int state ;
struct TYPE_11__ {int init_done; } ;
struct TYPE_13__ {int device_flags; int loop_down_timer; TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;


 int DFLG_NO_CABLE ;
 unsigned long FSTATE_LOGGED_IN ;
 unsigned long FSTATE_LOSS_OF_SYNC ;
 unsigned long FSTATE_READY ;
 unsigned long FSTATE_WAITING_FOR_VERIFY ;
 unsigned long HZ ;
 scalar_t__ IS_P3P_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA84XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 scalar_t__ atomic_read (int *) ;
 unsigned long jiffies ;
 int memset (unsigned long*,int,int) ;
 int msleep (int) ;
 int ql_dbg (int ,TYPE_3__*,int,char*,...) ;
 int ql_dbg_taskm ;
 int ql_log (int ,TYPE_3__*,int,char*) ;
 int ql_log_info ;
 int ql_log_warn ;
 int qla2x00_get_firmware_state (TYPE_3__*,unsigned long*) ;
 int qla2x00_get_retry_cnt (TYPE_3__*,int*,int*,int *) ;
 int qla84xx_init_chip (TYPE_3__*) ;
 int qlafx00_fw_ready (TYPE_3__*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int
qla2x00_fw_ready(scsi_qla_host_t *vha)
{
 int rval;
 unsigned long wtime, mtime, cs84xx_time;
 uint16_t min_wait;
 uint16_t wait_time;
 uint16_t state[6];
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLAFX00(vha->hw))
  return qlafx00_fw_ready(vha);

 rval = QLA_SUCCESS;


 if (IS_P3P_TYPE(ha))
  min_wait = 30;
 else
  min_wait = 20;





 if ((wait_time = (ha->retry_count*ha->login_timeout) + 5) < min_wait) {
  wait_time = min_wait;
 }


 mtime = jiffies + (min_wait * HZ);


 wtime = jiffies + (wait_time * HZ);


 if (!vha->flags.init_done)
  ql_log(ql_log_info, vha, 0x801e,
      "Waiting for LIP to complete.\n");

 do {
  memset(state, -1, sizeof(state));
  rval = qla2x00_get_firmware_state(vha, state);
  if (rval == QLA_SUCCESS) {
   if (state[0] < FSTATE_LOSS_OF_SYNC) {
    vha->device_flags &= ~DFLG_NO_CABLE;
   }
   if (IS_QLA84XX(ha) && state[0] != FSTATE_READY) {
    ql_dbg(ql_dbg_taskm, vha, 0x801f,
        "fw_state=%x 84xx=%x.\n", state[0],
        state[2]);
    if ((state[2] & FSTATE_LOGGED_IN) &&
         (state[2] & FSTATE_WAITING_FOR_VERIFY)) {
     ql_dbg(ql_dbg_taskm, vha, 0x8028,
         "Sending verify iocb.\n");

     cs84xx_time = jiffies;
     rval = qla84xx_init_chip(vha);
     if (rval != QLA_SUCCESS) {
      ql_log(ql_log_warn,
          vha, 0x8007,
          "Init chip failed.\n");
      break;
     }


     cs84xx_time = jiffies - cs84xx_time;
     wtime += cs84xx_time;
     mtime += cs84xx_time;
     ql_dbg(ql_dbg_taskm, vha, 0x8008,
         "Increasing wait time by %ld. "
         "New time %ld.\n", cs84xx_time,
         wtime);
    }
   } else if (state[0] == FSTATE_READY) {
    ql_dbg(ql_dbg_taskm, vha, 0x8037,
        "F/W Ready - OK.\n");

    qla2x00_get_retry_cnt(vha, &ha->retry_count,
        &ha->login_timeout, &ha->r_a_tov);

    rval = QLA_SUCCESS;
    break;
   }

   rval = QLA_FUNCTION_FAILED;

   if (atomic_read(&vha->loop_down_timer) &&
       state[0] != FSTATE_READY) {



    if (time_after_eq(jiffies, mtime)) {
     ql_log(ql_log_info, vha, 0x8038,
         "Cable is unplugged...\n");

     vha->device_flags |= DFLG_NO_CABLE;
     break;
    }
   }
  } else {

   if (time_after_eq(jiffies, mtime) ||
    ha->flags.isp82xx_fw_hung)
    break;
  }

  if (time_after_eq(jiffies, wtime))
   break;


  msleep(500);
 } while (1);

 ql_dbg(ql_dbg_taskm, vha, 0x803a,
     "fw_state=%x (%x, %x, %x, %x %x) curr time=%lx.\n", state[0],
     state[1], state[2], state[3], state[4], state[5], jiffies);

 if (rval && !(vha->device_flags & DFLG_NO_CABLE)) {
  ql_log(ql_log_warn, vha, 0x803b,
      "Firmware ready **** FAILED ****.\n");
 }

 return (rval);
}
