
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mbox_int; scalar_t__ mbox_busy; } ;
struct qla_hw_data {int mbx_intr_comp; int mbx_cmd_flags; TYPE_1__ flags; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int MBX_INTR_WAIT ;
 int complete (int *) ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_warn ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void qla82xx_clear_pending_mbx(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;

 if (ha->flags.mbox_busy) {
  ha->flags.mbox_int = 1;
  ha->flags.mbox_busy = 0;
  ql_log(ql_log_warn, vha, 0x6010,
      "Doing premature completion of mbx command.\n");
  if (test_and_clear_bit(MBX_INTR_WAIT, &ha->mbx_cmd_flags))
   complete(&ha->mbx_intr_comp);
 }
}
