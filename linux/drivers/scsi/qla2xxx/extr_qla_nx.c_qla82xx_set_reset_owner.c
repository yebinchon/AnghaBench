
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {int nic_core_reset_owner; } ;
struct qla_hw_data {int portnum; TYPE_1__ flags; } ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 scalar_t__ IS_QLA8044 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 scalar_t__ MAX_STATES ;
 int QLA8044_CRB_DEV_STATE_INDEX ;
 int QLA82XX_CRB_DEV_STATE ;
 int QLA8XXX_DEV_NEED_RESET ;
 scalar_t__ QLA8XXX_DEV_READY ;
 char* qdev_state (scalar_t__) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int ) ;
 int ql_dbg_p3p ;
 int ql_log (int ,TYPE_2__*,int,char*,...) ;
 int ql_log_info ;
 scalar_t__ qla8044_rd_direct (TYPE_2__*,int ) ;
 int qla8044_wr_direct (TYPE_2__*,int ,int ) ;
 scalar_t__ qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;

void
qla82xx_set_reset_owner(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t dev_state = 0;

 if (IS_QLA82XX(ha))
  dev_state = qla82xx_rd_32(ha, QLA82XX_CRB_DEV_STATE);
 else if (IS_QLA8044(ha))
  dev_state = qla8044_rd_direct(vha, QLA8044_CRB_DEV_STATE_INDEX);

 if (dev_state == QLA8XXX_DEV_READY) {
  ql_log(ql_log_info, vha, 0xb02f,
      "HW State: NEED RESET\n");
  if (IS_QLA82XX(ha)) {
   qla82xx_wr_32(ha, QLA82XX_CRB_DEV_STATE,
       QLA8XXX_DEV_NEED_RESET);
   ha->flags.nic_core_reset_owner = 1;
   ql_dbg(ql_dbg_p3p, vha, 0xb030,
       "reset_owner is 0x%x\n", ha->portnum);
  } else if (IS_QLA8044(ha))
   qla8044_wr_direct(vha, QLA8044_CRB_DEV_STATE_INDEX,
       QLA8XXX_DEV_NEED_RESET);
 } else
  ql_log(ql_log_info, vha, 0xb031,
      "Device state is 0x%x = %s.\n",
      dev_state,
      dev_state < MAX_STATES ? qdev_state(dev_state) : "Unknown");
}
