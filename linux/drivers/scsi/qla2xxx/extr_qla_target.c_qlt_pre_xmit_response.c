
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct se_cmd {int se_cmd_flags; int * t_task_cdb; int tag; int residual_count; } ;
struct qla_tgt_prm {int seg_cnt; int req_cnt; int add_status_pkt; int rq_result; int * sense_buffer; int residual; scalar_t__ tot_dsds; scalar_t__ prot_seg_cnt; int * prot_sg; int * sg; int sense_buffer_len; int * pkt; int tgt; struct qla_tgt_cmd* cmd; } ;
struct qla_tgt_cmd {TYPE_1__* vha; int bufflen; int * sense_buffer; int tgt; struct qla_qpair* qpair; struct se_cmd se_cmd; } ;
struct qla_qpair {int dummy; } ;
struct TYPE_2__ {int hw; } ;


 int EAGAIN ;
 scalar_t__ IS_FWI2_CAPABLE (int ) ;
 scalar_t__ QLA_TGT_SENSE_VALID (int *) ;
 int QLA_TGT_XMIT_DATA ;
 int QLA_TGT_XMIT_STATUS ;
 int SCF_OVERFLOW_BIT ;
 int SCF_UNDERFLOW_BIT ;
 int SS_RESIDUAL_OVER ;
 int SS_RESIDUAL_UNDER ;
 int TRANSPORT_SENSE_BUFFER ;
 scalar_t__ ql_dbg_io ;
 int ql_dbg_qp (scalar_t__,struct qla_qpair*,int,char*,int ,int ,int ,int ,int ) ;
 scalar_t__ ql_dbg_verbose ;
 scalar_t__ qlt_has_data (struct qla_tgt_cmd*) ;
 scalar_t__ qlt_pci_map_calc_cnt (struct qla_tgt_prm*) ;

__attribute__((used)) static int qlt_pre_xmit_response(struct qla_tgt_cmd *cmd,
 struct qla_tgt_prm *prm, int xmit_type, uint8_t scsi_status,
 uint32_t *full_req_cnt)
{
 struct se_cmd *se_cmd = &cmd->se_cmd;
 struct qla_qpair *qpair = cmd->qpair;

 prm->cmd = cmd;
 prm->tgt = cmd->tgt;
 prm->pkt = ((void*)0);
 prm->rq_result = scsi_status;
 prm->sense_buffer = &cmd->sense_buffer[0];
 prm->sense_buffer_len = TRANSPORT_SENSE_BUFFER;
 prm->sg = ((void*)0);
 prm->seg_cnt = -1;
 prm->req_cnt = 1;
 prm->residual = 0;
 prm->add_status_pkt = 0;
 prm->prot_sg = ((void*)0);
 prm->prot_seg_cnt = 0;
 prm->tot_dsds = 0;

 if ((xmit_type & QLA_TGT_XMIT_DATA) && qlt_has_data(cmd)) {
  if (qlt_pci_map_calc_cnt(prm) != 0)
   return -EAGAIN;
 }

 *full_req_cnt = prm->req_cnt;

 if (se_cmd->se_cmd_flags & SCF_UNDERFLOW_BIT) {
  prm->residual = se_cmd->residual_count;
  ql_dbg_qp(ql_dbg_io + ql_dbg_verbose, qpair, 0x305c,
      "Residual underflow: %d (tag %lld, op %x, bufflen %d, rq_result %x)\n",
         prm->residual, se_cmd->tag,
         se_cmd->t_task_cdb ? se_cmd->t_task_cdb[0] : 0,
         cmd->bufflen, prm->rq_result);
  prm->rq_result |= SS_RESIDUAL_UNDER;
 } else if (se_cmd->se_cmd_flags & SCF_OVERFLOW_BIT) {
  prm->residual = se_cmd->residual_count;
  ql_dbg_qp(ql_dbg_io, qpair, 0x305d,
      "Residual overflow: %d (tag %lld, op %x, bufflen %d, rq_result %x)\n",
         prm->residual, se_cmd->tag, se_cmd->t_task_cdb ?
         se_cmd->t_task_cdb[0] : 0, cmd->bufflen, prm->rq_result);
  prm->rq_result |= SS_RESIDUAL_OVER;
 }

 if (xmit_type & QLA_TGT_XMIT_STATUS) {




  if (qlt_has_data(cmd)) {
   if (QLA_TGT_SENSE_VALID(prm->sense_buffer) ||
       (IS_FWI2_CAPABLE(cmd->vha->hw) &&
       (prm->rq_result != 0))) {
    prm->add_status_pkt = 1;
    (*full_req_cnt)++;
   }
  }
 }

 return 0;
}
