
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct qla_hw_data {TYPE_2__* isp_ops; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_7__ {int lun_reset; } ;
struct TYPE_6__ {int host; } ;


 int FAILED ;
 int WAIT_LUN ;
 int __qla2xxx_eh_generic_reset (char*,int ,struct scsi_cmnd*,int ) ;
 int ql_log (int ,TYPE_3__*,int,char*) ;
 int ql_log_info ;
 scalar_t__ qla2x00_isp_reg_stat (struct qla_hw_data*) ;
 TYPE_3__* shost_priv (int ) ;

__attribute__((used)) static int
qla2xxx_eh_device_reset(struct scsi_cmnd *cmd)
{
 scsi_qla_host_t *vha = shost_priv(cmd->device->host);
 struct qla_hw_data *ha = vha->hw;

 if (qla2x00_isp_reg_stat(ha)) {
  ql_log(ql_log_info, vha, 0x803e,
      "PCI/Register disconnect, exiting.\n");
  return FAILED;
 }

 return __qla2xxx_eh_generic_reset("DEVICE", WAIT_LUN, cmd,
     ha->isp_ops->lun_reset);
}
