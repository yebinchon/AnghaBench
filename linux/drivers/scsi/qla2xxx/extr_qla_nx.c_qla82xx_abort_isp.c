
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int nic_core_reset_hdlr_active; scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {scalar_t__ isp_abort_cnt; TYPE_2__* isp_ops; TYPE_1__ flags; } ;
struct TYPE_16__ {int online; } ;
struct TYPE_17__ {int device_flags; int dpc_flags; TYPE_3__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_15__ {int (* reset_adapter ) (TYPE_4__*) ;} ;


 int DFLG_DEV_FAILED ;
 int ISP_ABORT_RETRY ;
 scalar_t__ IS_QLA8044 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 scalar_t__ MAX_RETRIES_OF_ISP_ABORT ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int clear_bit (int ,int *) ;
 int ql_dbg (int ,TYPE_4__*,int,char*,scalar_t__) ;
 int ql_dbg_taskm ;
 int ql_log (int ,TYPE_4__*,int,char*,...) ;
 int ql_log_warn ;
 int qla8044_device_state_handler (TYPE_4__*) ;
 int qla8044_idc_lock (struct qla_hw_data*) ;
 int qla8044_idc_unlock (struct qla_hw_data*) ;
 int qla82xx_clear_rst_ready (struct qla_hw_data*) ;
 int qla82xx_device_state_handler (TYPE_4__*) ;
 int qla82xx_idc_lock (struct qla_hw_data*) ;
 int qla82xx_idc_unlock (struct qla_hw_data*) ;
 int qla82xx_restart_isp (TYPE_4__*) ;
 int qla82xx_set_reset_owner (TYPE_4__*) ;
 int qla83xx_reset_ownership (TYPE_4__*) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_4__*) ;
 scalar_t__ test_bit (int ,int *) ;

int
qla82xx_abort_isp(scsi_qla_host_t *vha)
{
 int rval = -1;
 struct qla_hw_data *ha = vha->hw;

 if (vha->device_flags & DFLG_DEV_FAILED) {
  ql_log(ql_log_warn, vha, 0x8024,
      "Device in failed state, exiting.\n");
  return QLA_SUCCESS;
 }
 ha->flags.nic_core_reset_hdlr_active = 1;

 qla82xx_idc_lock(ha);
 qla82xx_set_reset_owner(vha);
 qla82xx_idc_unlock(ha);

 if (IS_QLA82XX(ha))
  rval = qla82xx_device_state_handler(vha);
 else if (IS_QLA8044(ha)) {
  qla8044_idc_lock(ha);

  qla83xx_reset_ownership(vha);
  qla8044_idc_unlock(ha);
  rval = qla8044_device_state_handler(vha);
 }

 qla82xx_idc_lock(ha);
 qla82xx_clear_rst_ready(ha);
 qla82xx_idc_unlock(ha);

 if (rval == QLA_SUCCESS) {
  ha->flags.isp82xx_fw_hung = 0;
  ha->flags.nic_core_reset_hdlr_active = 0;
  qla82xx_restart_isp(vha);
 }

 if (rval) {
  vha->flags.online = 1;
  if (test_bit(ISP_ABORT_RETRY, &vha->dpc_flags)) {
   if (ha->isp_abort_cnt == 0) {
    ql_log(ql_log_warn, vha, 0x8027,
        "ISP error recover failed - board "
        "disabled.\n");




    ha->isp_ops->reset_adapter(vha);
    vha->flags.online = 0;
    clear_bit(ISP_ABORT_RETRY,
        &vha->dpc_flags);
    rval = QLA_SUCCESS;
   } else {
    ha->isp_abort_cnt--;
    ql_log(ql_log_warn, vha, 0x8036,
        "ISP abort - retry remaining %d.\n",
        ha->isp_abort_cnt);
    rval = QLA_FUNCTION_FAILED;
   }
  } else {
   ha->isp_abort_cnt = MAX_RETRIES_OF_ISP_ABORT;
   ql_dbg(ql_dbg_taskm, vha, 0x8029,
       "ISP error recovery - retrying (%d) more times.\n",
       ha->isp_abort_cnt);
   set_bit(ISP_ABORT_RETRY, &vha->dpc_flags);
   rval = QLA_FUNCTION_FAILED;
  }
 }
 return rval;
}
