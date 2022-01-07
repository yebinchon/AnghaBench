
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_15__ {int nic_core_reset_owner; int quiesce_owner; } ;
struct qla_hw_data {unsigned long fcoe_dev_init_timeout; TYPE_1__ flags; int portnum; } ;
struct TYPE_16__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 unsigned long HZ ;
 int IDC_AUDIT_COMPLETION ;
 int QLA83XX_IDC_DEV_STATE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int __qla83xx_clear_drv_presence (TYPE_2__*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int ql2xdontresethba ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int ) ;
 int ql_dbg_p3p ;
 int ql_log (int ,TYPE_2__*,int,char*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 int qla83xx_device_bootstrap (TYPE_2__*) ;
 int qla83xx_idc_audit (TYPE_2__*,int ) ;
 int qla83xx_idc_lock (TYPE_2__*,int ) ;
 int qla83xx_idc_unlock (TYPE_2__*,int ) ;
 int qla83xx_need_reset_handler (TYPE_2__*) ;
 int qla83xx_rd_reg (TYPE_2__*,int ,int*) ;
 int qla83xx_wr_reg (TYPE_2__*,int ,int) ;
 int qla8xxx_dev_failed_handler (TYPE_2__*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int
qla83xx_idc_state_handler(scsi_qla_host_t *base_vha)
{
 struct qla_hw_data *ha = base_vha->hw;
 int rval = QLA_SUCCESS;
 unsigned long dev_init_timeout;
 uint32_t dev_state;


 dev_init_timeout = jiffies + (ha->fcoe_dev_init_timeout * HZ);

 while (1) {

  if (time_after_eq(jiffies, dev_init_timeout)) {
   ql_log(ql_log_warn, base_vha, 0xb06e,
       "Initialization TIMEOUT!\n");



   qla83xx_wr_reg(base_vha, QLA83XX_IDC_DEV_STATE,
    133);
   ql_log(ql_log_info, base_vha, 0xb06f,
       "HW State: FAILED.\n");
  }

  qla83xx_rd_reg(base_vha, QLA83XX_IDC_DEV_STATE, &dev_state);
  switch (dev_state) {
  case 128:
   if (ha->flags.nic_core_reset_owner)
    qla83xx_idc_audit(base_vha,
        IDC_AUDIT_COMPLETION);
   ha->flags.nic_core_reset_owner = 0;
   ql_dbg(ql_dbg_p3p, base_vha, 0xb070,
       "Reset_owner reset by 0x%x.\n",
       ha->portnum);
   goto exit;
  case 134:
   if (ha->flags.nic_core_reset_owner)
    rval = qla83xx_device_bootstrap(base_vha);
   else {

    qla83xx_idc_unlock(base_vha, 0);
    msleep(1000);
    qla83xx_idc_lock(base_vha, 0);
   }
   break;
  case 132:

   qla83xx_idc_unlock(base_vha, 0);
   msleep(1000);
   qla83xx_idc_lock(base_vha, 0);
   break;
  case 130:
   if (!ql2xdontresethba && ha->flags.nic_core_reset_owner)
    qla83xx_need_reset_handler(base_vha);
   else {

    qla83xx_idc_unlock(base_vha, 0);
    msleep(1000);
    qla83xx_idc_lock(base_vha, 0);
   }

   dev_init_timeout = jiffies +
       (ha->fcoe_dev_init_timeout * HZ);
   break;
  case 131:

   qla83xx_idc_unlock(base_vha, 0);
   msleep(1000);
   qla83xx_idc_lock(base_vha, 0);
   break;
  case 129:

   if (ha->flags.quiesce_owner)
    goto exit;

   qla83xx_idc_unlock(base_vha, 0);
   msleep(1000);
   qla83xx_idc_lock(base_vha, 0);
   dev_init_timeout = jiffies +
       (ha->fcoe_dev_init_timeout * HZ);
   break;
  case 133:
   if (ha->flags.nic_core_reset_owner)
    qla83xx_idc_audit(base_vha,
        IDC_AUDIT_COMPLETION);
   ha->flags.nic_core_reset_owner = 0;
   __qla83xx_clear_drv_presence(base_vha);
   qla83xx_idc_unlock(base_vha, 0);
   qla8xxx_dev_failed_handler(base_vha);
   rval = QLA_FUNCTION_FAILED;
   qla83xx_idc_lock(base_vha, 0);
   goto exit;
  case 135:
   qla83xx_idc_unlock(base_vha, 0);
   msleep(1000);
   qla83xx_idc_lock(base_vha, 0);
   break;
  default:
   ql_log(ql_log_warn, base_vha, 0xb071,
       "Unknown Device State: %x.\n", dev_state);
   qla83xx_idc_unlock(base_vha, 0);
   qla8xxx_dev_failed_handler(base_vha);
   rval = QLA_FUNCTION_FAILED;
   qla83xx_idc_lock(base_vha, 0);
   goto exit;
  }
 }

exit:
 return rval;
}
