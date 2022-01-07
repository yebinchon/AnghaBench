
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_18__ {struct qla_tgt_cmd* tag; } ;
struct TYPE_12__ {unsigned char* cdb; int task_attr; scalar_t__ wrdata; scalar_t__ rddata; } ;
struct TYPE_13__ {TYPE_1__ fcp_cmnd; struct qla_tgt_cmd* exchange_addr; } ;
struct TYPE_14__ {TYPE_2__ isp24; } ;
struct atio_from_isp {TYPE_3__ u; } ;
struct qla_tgt_cmd {TYPE_7__ se_cmd; struct atio_from_isp atio; int trc_flags; int cmd_lock; scalar_t__ aborted; scalar_t__ cmd_in_wq; struct qla_qpair* qpair; struct fc_port* sess; TYPE_6__* vha; } ;
struct qla_qpair {int qp_lock_ptr; } ;
struct TYPE_16__ {TYPE_4__* tgt_ops; } ;
struct qla_hw_data {TYPE_5__ tgt; } ;
struct fc_port {int se_sess; } ;
struct TYPE_17__ {struct qla_hw_data* hw; } ;
typedef TYPE_6__ scsi_qla_host_t ;
struct TYPE_15__ {int (* handle_cmd ) (TYPE_6__*,struct qla_tgt_cmd*,unsigned char*,int ,int,int,int) ;int (* put_sess ) (struct fc_port*) ;} ;


 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int TRC_DO_WORK ;
 int TRC_DO_WORK_ERR ;
 int get_datalen_for_atio (struct atio_from_isp*) ;
 int ql_dbg (int ,TYPE_6__*,int,char*,struct qla_tgt_cmd*) ;
 int ql_dbg_io ;
 int ql_dbg_tgt_mgt ;
 int qlt_decr_num_pend_cmds (TYPE_6__*) ;
 int qlt_get_fcp_task_attr (TYPE_6__*,int ) ;
 int qlt_send_term_exchange (struct qla_qpair*,int *,struct atio_from_isp*,int,int ) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_6__*,struct qla_tgt_cmd*,unsigned char*,int ,int,int,int) ;
 int stub2 (struct fc_port*) ;
 int stub3 (struct fc_port*) ;
 int target_free_tag (int ,TYPE_7__*) ;

__attribute__((used)) static void __qlt_do_work(struct qla_tgt_cmd *cmd)
{
 scsi_qla_host_t *vha = cmd->vha;
 struct qla_hw_data *ha = vha->hw;
 struct fc_port *sess = cmd->sess;
 struct atio_from_isp *atio = &cmd->atio;
 unsigned char *cdb;
 unsigned long flags;
 uint32_t data_length;
 int ret, fcp_task_attr, data_dir, bidi = 0;
 struct qla_qpair *qpair = cmd->qpair;

 cmd->cmd_in_wq = 0;
 cmd->trc_flags |= TRC_DO_WORK;

 if (cmd->aborted) {
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf082,
      "cmd with tag %u is aborted\n",
      cmd->atio.u.isp24.exchange_addr);
  goto out_term;
 }

 spin_lock_init(&cmd->cmd_lock);
 cdb = &atio->u.isp24.fcp_cmnd.cdb[0];
 cmd->se_cmd.tag = atio->u.isp24.exchange_addr;

 if (atio->u.isp24.fcp_cmnd.rddata &&
     atio->u.isp24.fcp_cmnd.wrdata) {
  bidi = 1;
  data_dir = DMA_TO_DEVICE;
 } else if (atio->u.isp24.fcp_cmnd.rddata)
  data_dir = DMA_FROM_DEVICE;
 else if (atio->u.isp24.fcp_cmnd.wrdata)
  data_dir = DMA_TO_DEVICE;
 else
  data_dir = DMA_NONE;

 fcp_task_attr = qlt_get_fcp_task_attr(vha,
     atio->u.isp24.fcp_cmnd.task_attr);
 data_length = get_datalen_for_atio(atio);

 ret = ha->tgt.tgt_ops->handle_cmd(vha, cmd, cdb, data_length,
              fcp_task_attr, data_dir, bidi);
 if (ret != 0)
  goto out_term;



 ha->tgt.tgt_ops->put_sess(sess);
 return;

out_term:
 ql_dbg(ql_dbg_io, vha, 0x3060, "Terminating work cmd %p", cmd);




 cmd->trc_flags |= TRC_DO_WORK_ERR;
 spin_lock_irqsave(qpair->qp_lock_ptr, flags);
 qlt_send_term_exchange(qpair, ((void*)0), &cmd->atio, 1, 0);

 qlt_decr_num_pend_cmds(vha);
 target_free_tag(sess->se_sess, &cmd->se_cmd);
 spin_unlock_irqrestore(qpair->qp_lock_ptr, flags);

 ha->tgt.tgt_ops->put_sess(sess);
}
