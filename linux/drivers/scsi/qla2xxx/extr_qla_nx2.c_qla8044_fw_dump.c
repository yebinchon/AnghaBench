
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int isp82xx_no_md_cap; } ;
struct qla_hw_data {TYPE_1__ flags; int allow_cna_fw_dump; } ;
struct TYPE_7__ {int host; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int qla2x00_wait_for_chip_reset (TYPE_2__*) ;
 int qla8044_idc_lock (struct qla_hw_data*) ;
 int qla8044_idc_unlock (struct qla_hw_data*) ;
 int qla82xx_set_reset_owner (TYPE_2__*) ;
 int scsi_block_requests (int ) ;
 int scsi_unblock_requests (int ) ;

void
qla8044_fw_dump(scsi_qla_host_t *vha, int hardware_locked)
{
 struct qla_hw_data *ha = vha->hw;

 if (!ha->allow_cna_fw_dump)
  return;

 scsi_block_requests(vha->host);
 ha->flags.isp82xx_no_md_cap = 1;
 qla8044_idc_lock(ha);
 qla82xx_set_reset_owner(vha);
 qla8044_idc_unlock(ha);
 qla2x00_wait_for_chip_reset(vha);
 scsi_unblock_requests(vha->host);
}
