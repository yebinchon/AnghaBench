
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {int dpc_flags; TYPE_1__ vha_tgt; struct qla_hw_data* hw; } ;
struct qla_tgt {int dummy; } ;
struct qla_hw_data {int hardware_lock; } ;


 int ISP_ABORT_NEEDED ;
 scalar_t__ QLA_SUCCESS ;
 int dump_stack () ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*) ;
 int ql_dbg_tgt ;
 scalar_t__ qla2x00_wait_for_hba_online (struct scsi_qla_host*) ;
 int qla2xxx_wake_dpc (struct scsi_qla_host*) ;
 int qlt_clear_mode (struct scsi_qla_host*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qlt_disable_vha(struct scsi_qla_host *vha)
{
 struct qla_hw_data *ha = vha->hw;
 struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
 unsigned long flags;

 if (!tgt) {
  ql_dbg(ql_dbg_tgt, vha, 0xe06a,
      "Unable to locate qla_tgt pointer from"
      " struct qla_hw_data\n");
  dump_stack();
  return;
 }

 spin_lock_irqsave(&ha->hardware_lock, flags);
 qlt_clear_mode(vha);
 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
 qla2xxx_wake_dpc(vha);
 if (qla2x00_wait_for_hba_online(vha) != QLA_SUCCESS)
  ql_dbg(ql_dbg_tgt, vha, 0xe081,
         "qla2x00_wait_for_hba_online() failed\n");
}
