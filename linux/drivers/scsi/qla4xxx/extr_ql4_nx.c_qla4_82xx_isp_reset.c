
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int flags; } ;


 int AF_8XXX_RST_OWNER ;
 int AF_FW_RECOVERY ;
 int KERN_INFO ;
 int QLA82XX_CRB_DEV_STATE ;
 int QLA8XXX_DEV_NEED_RESET ;
 scalar_t__ QLA8XXX_DEV_READY ;
 int QLA_SUCCESS ;
 int clear_bit (int ,int *) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_82xx_idc_lock (struct scsi_qla_host*) ;
 int qla4_82xx_idc_unlock (struct scsi_qla_host*) ;
 scalar_t__ qla4_82xx_rd_32 (struct scsi_qla_host*,int ) ;
 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int ) ;
 int qla4_8xxx_clear_rst_ready (struct scsi_qla_host*) ;
 int qla4_8xxx_device_state_handler (struct scsi_qla_host*) ;
 int set_bit (int ,int *) ;

int
qla4_82xx_isp_reset(struct scsi_qla_host *ha)
{
 int rval;
 uint32_t dev_state;

 qla4_82xx_idc_lock(ha);
 dev_state = qla4_82xx_rd_32(ha, QLA82XX_CRB_DEV_STATE);

 if (dev_state == QLA8XXX_DEV_READY) {
  ql4_printk(KERN_INFO, ha, "HW State: NEED RESET\n");
  qla4_82xx_wr_32(ha, QLA82XX_CRB_DEV_STATE,
      QLA8XXX_DEV_NEED_RESET);
  set_bit(AF_8XXX_RST_OWNER, &ha->flags);
 } else
  ql4_printk(KERN_INFO, ha, "HW State: DEVICE INITIALIZING\n");

 qla4_82xx_idc_unlock(ha);

 rval = qla4_8xxx_device_state_handler(ha);

 qla4_82xx_idc_lock(ha);
 qla4_8xxx_clear_rst_ready(ha);
 qla4_82xx_idc_unlock(ha);

 if (rval == QLA_SUCCESS) {
  ql4_printk(KERN_INFO, ha, "Clearing AF_RECOVERY in qla4_82xx_isp_reset\n");
  clear_bit(AF_FW_RECOVERY, &ha->flags);
 }

 return rval;
}
