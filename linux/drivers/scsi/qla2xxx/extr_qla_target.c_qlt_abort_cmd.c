
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_cmd_flags; struct se_cmd* t_state; struct qla_tgt_cmd* transport_state; int tag; } ;
struct scsi_qla_host {struct qla_tgt_cmd* vp_idx; } ;
struct qla_tgt_cmd {int aborted; int atio; int qpair; int cmd_lock; int trc_flags; struct se_cmd se_cmd; struct qla_tgt* tgt; } ;
struct qla_tgt {struct scsi_qla_host* vha; } ;


 int EIO ;
 int TRC_ABORT ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,struct qla_tgt_cmd*,struct qla_tgt_cmd*,struct se_cmd*,int ) ;
 int ql_dbg_tgt_mgt ;
 int qlt_send_term_exchange (int ,struct qla_tgt_cmd*,int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qlt_abort_cmd(struct qla_tgt_cmd *cmd)
{
 struct qla_tgt *tgt = cmd->tgt;
 struct scsi_qla_host *vha = tgt->vha;
 struct se_cmd *se_cmd = &cmd->se_cmd;
 unsigned long flags;

 ql_dbg(ql_dbg_tgt_mgt, vha, 0xf014,
     "qla_target(%d): terminating exchange for aborted cmd=%p "
     "(se_cmd=%p, tag=%llu)", vha->vp_idx, cmd, &cmd->se_cmd,
     se_cmd->tag);

 spin_lock_irqsave(&cmd->cmd_lock, flags);
 if (cmd->aborted) {
  spin_unlock_irqrestore(&cmd->cmd_lock, flags);





  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf016,
      "multiple abort. %p transport_state %x, t_state %x, "
      "se_cmd_flags %x\n", cmd, cmd->se_cmd.transport_state,
      cmd->se_cmd.t_state, cmd->se_cmd.se_cmd_flags);
  return EIO;
 }
 cmd->aborted = 1;
 cmd->trc_flags |= TRC_ABORT;
 spin_unlock_irqrestore(&cmd->cmd_lock, flags);

 qlt_send_term_exchange(cmd->qpair, cmd, &cmd->atio, 0, 1);
 return 0;
}
