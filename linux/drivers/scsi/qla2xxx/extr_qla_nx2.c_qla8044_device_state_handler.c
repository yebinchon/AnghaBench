
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_2__ {int nic_core_reset_owner; } ;
struct qla_hw_data {unsigned long fcoe_dev_init_timeout; unsigned long fcoe_reset_timeout; TYPE_1__ flags; } ;


 unsigned long HZ ;
 int MAX_STATES ;
 int QLA2XXX_DRIVER_NAME ;
 int QLA8044_CRB_DEV_STATE_INDEX ;







 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 unsigned long jiffies ;
 int msleep (int) ;
 char* qdev_state (int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int,char*) ;
 int ql_dbg_p3p ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 int qla8044_check_drv_active (struct scsi_qla_host*) ;
 int qla8044_device_bootstrap (struct scsi_qla_host*) ;
 int qla8044_idc_lock (struct qla_hw_data*) ;
 int qla8044_idc_unlock (struct qla_hw_data*) ;
 int qla8044_need_qsnt_handler (struct scsi_qla_host*) ;
 int qla8044_need_reset_handler (struct scsi_qla_host*) ;
 int qla8044_rd_direct (struct scsi_qla_host*,int ) ;
 int qla8044_update_idc_reg (struct scsi_qla_host*) ;
 int qla8044_wr_direct (struct scsi_qla_host*,int ,int) ;
 int qla8xxx_dev_failed_handler (struct scsi_qla_host*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int
qla8044_device_state_handler(struct scsi_qla_host *vha)
{
 uint32_t dev_state;
 int rval = QLA_SUCCESS;
 unsigned long dev_init_timeout;
 struct qla_hw_data *ha = vha->hw;

 rval = qla8044_update_idc_reg(vha);
 if (rval == QLA_FUNCTION_FAILED)
  goto exit_error;

 dev_state = qla8044_rd_direct(vha, QLA8044_CRB_DEV_STATE_INDEX);
 ql_dbg(ql_dbg_p3p, vha, 0xb0ce,
     "Device state is 0x%x = %s\n",
     dev_state, dev_state < MAX_STATES ?
     qdev_state(dev_state) : "Unknown");


 dev_init_timeout = jiffies + (ha->fcoe_dev_init_timeout * HZ);

 qla8044_idc_lock(ha);

 while (1) {
  if (time_after_eq(jiffies, dev_init_timeout)) {
   if (qla8044_check_drv_active(vha) == QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0xb0cf,
        "%s: Device Init Failed 0x%x = %s\n",
        QLA2XXX_DRIVER_NAME, dev_state,
        dev_state < MAX_STATES ?
        qdev_state(dev_state) : "Unknown");
    qla8044_wr_direct(vha,
        QLA8044_CRB_DEV_STATE_INDEX,
        133);
   }
  }

  dev_state = qla8044_rd_direct(vha, QLA8044_CRB_DEV_STATE_INDEX);
  ql_log(ql_log_info, vha, 0xb0d0,
      "Device state is 0x%x = %s\n",
      dev_state, dev_state < MAX_STATES ?
      qdev_state(dev_state) : "Unknown");


  switch (dev_state) {
  case 128:
   ha->flags.nic_core_reset_owner = 0;
   goto exit;
  case 134:
   rval = qla8044_device_bootstrap(vha);
   break;
  case 132:
   qla8044_idc_unlock(ha);
   msleep(1000);
   qla8044_idc_lock(ha);
   break;
  case 130:



   qla8044_need_reset_handler(vha);
   break;
  case 131:

   qla8044_need_qsnt_handler(vha);


   dev_init_timeout = jiffies +
       (ha->fcoe_reset_timeout * HZ);
   break;
  case 129:
   ql_log(ql_log_info, vha, 0xb0d1,
       "HW State: QUIESCENT\n");

   qla8044_idc_unlock(ha);
   msleep(1000);
   qla8044_idc_lock(ha);


   dev_init_timeout = jiffies +
       (ha->fcoe_reset_timeout * HZ);
   break;
  case 133:
   ha->flags.nic_core_reset_owner = 0;
   qla8044_idc_unlock(ha);
   qla8xxx_dev_failed_handler(vha);
   rval = QLA_FUNCTION_FAILED;
   qla8044_idc_lock(ha);
   goto exit;
  default:
   qla8044_idc_unlock(ha);
   qla8xxx_dev_failed_handler(vha);
   rval = QLA_FUNCTION_FAILED;
   qla8044_idc_lock(ha);
   goto exit;
  }
 }
exit:
 qla8044_idc_unlock(ha);

exit_error:
 return rval;
}
