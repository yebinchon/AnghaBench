
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {int func_num; TYPE_1__* isp_ops; int flags; } ;
struct TYPE_2__ {int (* idc_unlock ) (struct scsi_qla_host*) ;int (* idc_lock ) (struct scsi_qla_host*) ;} ;


 int AF_INIT_DONE ;
 int QLA8XXX_CRB_DRV_ACTIVE ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8042 (struct scsi_qla_host*) ;
 int ql4xdontresethba ;
 int qla4_82xx_set_idc_ver (struct scsi_qla_host*) ;
 int qla4_83xx_clear_idc_dontreset (struct scsi_qla_host*) ;
 int qla4_83xx_set_idc_ver (struct scsi_qla_host*) ;
 int qla4_8xxx_clear_drv_active (struct scsi_qla_host*) ;
 int qla4_8xxx_rd_direct (struct scsi_qla_host*,int ) ;
 int qla4_8xxx_set_drv_active (struct scsi_qla_host*) ;
 int stub1 (struct scsi_qla_host*) ;
 int stub2 (struct scsi_qla_host*) ;
 scalar_t__ test_bit (int ,int *) ;

int qla4_8xxx_update_idc_reg(struct scsi_qla_host *ha)
{
 uint32_t drv_active;
 int rval = QLA_SUCCESS;

 if (test_bit(AF_INIT_DONE, &ha->flags))
  goto exit_update_idc_reg;

 ha->isp_ops->idc_lock(ha);
 qla4_8xxx_set_drv_active(ha);





 if (is_qla8032(ha) || is_qla8042(ha)) {
  drv_active = qla4_8xxx_rd_direct(ha, QLA8XXX_CRB_DRV_ACTIVE);
  if ((drv_active == (1 << ha->func_num)) && !ql4xdontresethba)
   qla4_83xx_clear_idc_dontreset(ha);
 }

 if (is_qla8022(ha)) {
  qla4_82xx_set_idc_ver(ha);
 } else if (is_qla8032(ha) || is_qla8042(ha)) {
  rval = qla4_83xx_set_idc_ver(ha);
  if (rval == QLA_ERROR)
   qla4_8xxx_clear_drv_active(ha);
 }

 ha->isp_ops->idc_unlock(ha);

exit_update_idc_reg:
 return rval;
}
