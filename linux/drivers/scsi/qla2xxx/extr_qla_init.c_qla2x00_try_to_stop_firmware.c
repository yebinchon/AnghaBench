
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ fw_init_done; int fw_started; scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {TYPE_2__ flags; TYPE_1__* isp_ops; int fw_major_version; } ;
struct TYPE_12__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_10__ {int (* chip_diag ) (TYPE_3__*) ;int (* reset_chip ) (TYPE_3__*) ;} ;


 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int QLA_FUNCTION_TIMEOUT ;
 int QLA_FW_STOPPED (struct qla_hw_data*) ;
 int QLA_INVALID_COMMAND ;
 int QLA_SUCCESS ;
 int ql_log (int ,TYPE_3__*,int,char*) ;
 int ql_log_info ;
 int qla2x00_setup_chip (TYPE_3__*) ;
 int qla2x00_stop_firmware (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

void
qla2x00_try_to_stop_firmware(scsi_qla_host_t *vha)
{
 int ret, retries;
 struct qla_hw_data *ha = vha->hw;

 if (ha->flags.pci_channel_io_perm_failure)
  return;
 if (!IS_FWI2_CAPABLE(ha))
  return;
 if (!ha->fw_major_version)
  return;
 if (!ha->flags.fw_started)
  return;

 ret = qla2x00_stop_firmware(vha);
 for (retries = 5; ret != QLA_SUCCESS && ret != QLA_FUNCTION_TIMEOUT &&
     ret != QLA_INVALID_COMMAND && retries ; retries--) {
  ha->isp_ops->reset_chip(vha);
  if (ha->isp_ops->chip_diag(vha) != QLA_SUCCESS)
   continue;
  if (qla2x00_setup_chip(vha) != QLA_SUCCESS)
   continue;
  ql_log(ql_log_info, vha, 0x8015,
      "Attempting retry of stop-firmware command.\n");
  ret = qla2x00_stop_firmware(vha);
 }

 QLA_FW_STOPPED(ha);
 ha->flags.fw_init_done = 0;
}
