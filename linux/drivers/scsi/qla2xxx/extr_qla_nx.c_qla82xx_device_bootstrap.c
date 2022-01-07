
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {TYPE_1__ flags; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int QLA82XX_CRB_DEV_STATE ;
 int QLA82XX_PEG_ALIVE_COUNTER ;
 int QLA8XXX_DEV_FAILED ;
 int QLA8XXX_DEV_INITIALIZING ;
 int QLA8XXX_DEV_READY ;
 int QLA_SUCCESS ;
 int msleep (int) ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_fatal ;
 int ql_log_info ;
 int qla82xx_clear_drv_active (struct qla_hw_data*) ;
 int qla82xx_idc_lock (struct qla_hw_data*) ;
 int qla82xx_idc_unlock (struct qla_hw_data*) ;
 int qla82xx_need_reset (struct qla_hw_data*) ;
 scalar_t__ qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_rom_lock_recovery (struct qla_hw_data*) ;
 int qla82xx_start_firmware (TYPE_2__*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;

__attribute__((used)) static int
qla82xx_device_bootstrap(scsi_qla_host_t *vha)
{
 int rval = QLA_SUCCESS;
 int i;
 uint32_t old_count, count;
 struct qla_hw_data *ha = vha->hw;
 int need_reset = 0;

 need_reset = qla82xx_need_reset(ha);

 if (need_reset) {

  if (ha->flags.isp82xx_fw_hung)
   qla82xx_rom_lock_recovery(ha);
 } else {
  old_count = qla82xx_rd_32(ha, QLA82XX_PEG_ALIVE_COUNTER);
  for (i = 0; i < 10; i++) {
   msleep(200);
   count = qla82xx_rd_32(ha, QLA82XX_PEG_ALIVE_COUNTER);
   if (count != old_count) {
    rval = QLA_SUCCESS;
    goto dev_ready;
   }
  }
  qla82xx_rom_lock_recovery(ha);
 }


 ql_log(ql_log_info, vha, 0x009e,
     "HW State: INITIALIZING.\n");
 qla82xx_wr_32(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_INITIALIZING);

 qla82xx_idc_unlock(ha);
 rval = qla82xx_start_firmware(vha);
 qla82xx_idc_lock(ha);

 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_fatal, vha, 0x00ad,
      "HW State: FAILED.\n");
  qla82xx_clear_drv_active(ha);
  qla82xx_wr_32(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_FAILED);
  return rval;
 }

dev_ready:
 ql_log(ql_log_info, vha, 0x00ae,
     "HW State: READY.\n");
 qla82xx_wr_32(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_READY);

 return QLA_SUCCESS;
}
