
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct qla_hw_data {int dummy; } ;
struct TYPE_7__ {scalar_t__ init_done; scalar_t__ online; } ;
struct TYPE_8__ {TYPE_1__ flags; int device_flags; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int DFLG_DEV_FAILED ;
 int DID_NO_CONNECT ;
 scalar_t__ IS_QLA8044 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_fatal ;
 int qla2x00_abort_all_cmds (TYPE_2__*,int) ;
 int qla2x00_mark_all_devices_lost (TYPE_2__*,int ) ;
 int qla8044_clear_drv_active (struct qla_hw_data*) ;
 int qla8044_idc_unlock (struct qla_hw_data*) ;
 int qla82xx_clear_drv_active (struct qla_hw_data*) ;
 int qla82xx_idc_unlock (struct qla_hw_data*) ;

void
qla8xxx_dev_failed_handler(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;


 ql_log(ql_log_fatal, vha, 0x00b8,
     "Disabling the board.\n");

 if (IS_QLA82XX(ha)) {
  qla82xx_clear_drv_active(ha);
  qla82xx_idc_unlock(ha);
 } else if (IS_QLA8044(ha)) {
  qla8044_clear_drv_active(ha);
  qla8044_idc_unlock(ha);
 }


 vha->device_flags |= DFLG_DEV_FAILED;
 qla2x00_abort_all_cmds(vha, DID_NO_CONNECT << 16);
 qla2x00_mark_all_devices_lost(vha, 0);
 vha->flags.online = 0;
 vha->flags.init_done = 0;
}
