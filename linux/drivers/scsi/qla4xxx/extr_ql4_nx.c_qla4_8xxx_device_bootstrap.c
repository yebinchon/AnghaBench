
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* isp_ops; int flags; } ;
struct TYPE_2__ {int (* need_reset ) (struct scsi_qla_host*) ;int (* restart_firmware ) (struct scsi_qla_host*) ;int (* idc_lock ) (struct scsi_qla_host*) ;int (* idc_unlock ) (struct scsi_qla_host*) ;int (* rom_lock_recovery ) (struct scsi_qla_host*) ;} ;


 int AF_FW_RECOVERY ;
 int KERN_INFO ;
 int QLA8XXX_CRB_DEV_STATE ;
 int QLA8XXX_DEV_FAILED ;
 int QLA8XXX_DEV_INITIALIZING ;
 int QLA8XXX_DEV_READY ;
 int QLA8XXX_PEG_ALIVE_COUNTER ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 int msleep (int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_8xxx_clear_drv_active (struct scsi_qla_host*) ;
 int qla4_8xxx_get_minidump (struct scsi_qla_host*) ;
 scalar_t__ qla4_8xxx_rd_direct (struct scsi_qla_host*,int ) ;
 int qla4_8xxx_wr_direct (struct scsi_qla_host*,int ,int ) ;
 int stub1 (struct scsi_qla_host*) ;
 int stub2 (struct scsi_qla_host*) ;
 int stub3 (struct scsi_qla_host*) ;
 int stub4 (struct scsi_qla_host*) ;
 int stub5 (struct scsi_qla_host*) ;
 int stub6 (struct scsi_qla_host*) ;
 scalar_t__ test_bit (int ,int *) ;

int qla4_8xxx_device_bootstrap(struct scsi_qla_host *ha)
{
 int rval = QLA_ERROR;
 int i;
 uint32_t old_count, count;
 int need_reset = 0;

 need_reset = ha->isp_ops->need_reset(ha);

 if (need_reset) {

  if (test_bit(AF_FW_RECOVERY, &ha->flags))
   ha->isp_ops->rom_lock_recovery(ha);
 } else {
  old_count = qla4_8xxx_rd_direct(ha, QLA8XXX_PEG_ALIVE_COUNTER);
  for (i = 0; i < 10; i++) {
   msleep(200);
   count = qla4_8xxx_rd_direct(ha,
          QLA8XXX_PEG_ALIVE_COUNTER);
   if (count != old_count) {
    rval = QLA_SUCCESS;
    goto dev_ready;
   }
  }
  ha->isp_ops->rom_lock_recovery(ha);
 }


 ql4_printk(KERN_INFO, ha, "HW State: INITIALIZING\n");
 qla4_8xxx_wr_direct(ha, QLA8XXX_CRB_DEV_STATE,
       QLA8XXX_DEV_INITIALIZING);

 ha->isp_ops->idc_unlock(ha);

 if (is_qla8022(ha))
  qla4_8xxx_get_minidump(ha);

 rval = ha->isp_ops->restart_firmware(ha);
 ha->isp_ops->idc_lock(ha);

 if (rval != QLA_SUCCESS) {
  ql4_printk(KERN_INFO, ha, "HW State: FAILED\n");
  qla4_8xxx_clear_drv_active(ha);
  qla4_8xxx_wr_direct(ha, QLA8XXX_CRB_DEV_STATE,
        QLA8XXX_DEV_FAILED);
  return rval;
 }

dev_ready:
 ql4_printk(KERN_INFO, ha, "HW State: READY\n");
 qla4_8xxx_wr_direct(ha, QLA8XXX_CRB_DEV_STATE, QLA8XXX_DEV_READY);

 return rval;
}
