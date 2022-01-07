
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int itid; } ;
struct iscsi_nop_in_hdr {int hdr_second_dword; int ttt; int stat_sn; int exp_cmd_sn; int max_cmd_sn; int opcode; } ;
struct TYPE_7__ {struct iscsi_nop_in_hdr nop_in; } ;
struct TYPE_9__ {scalar_t__ cqe_type; TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_5__ cqe_solicited; int cqe_unsolicited; TYPE_4__ cqe_common; } ;
typedef int u32 ;
typedef int u16 ;
struct scsi_lun {int dummy; } ;
struct qedi_ctx {int dbg_ctx; int hba_lock; } ;
struct TYPE_8__ {int resp_hdr; } ;
struct qedi_conn {int list_lock; int active_cmd_count; int iscsi_conn_id; TYPE_3__ gen_pdu; TYPE_1__* cls_conn; } ;
struct qedi_cmd {int io_cmd_in_list; int task_id; int io_cmd; int state; } ;
struct iscsi_task {struct qedi_cmd* dd_data; } ;
struct iscsi_session {int back_lock; int age; } ;
struct iscsi_nopin {int lun; int itt; int flags; void* ttt; void* statsn; void* exp_cmdsn; void* max_cmdsn; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct TYPE_6__ {struct iscsi_conn* dd_data; } ;


 scalar_t__ ISCSI_CQE_TYPE_UNSOLICITED ;
 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_NOP_IN_HDR_DATA_SEG_LEN_MASK ;
 int QEDI_BDQ_BUF_SIZE ;
 int QEDI_INFO (int *,int ,char*,int ,int ) ;
 int QEDI_LOG_TID ;
 int RESERVED_ITT ;
 int RESPONSE_RECEIVED ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ;
 int build_itt (int ,int ) ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int memcpy (int *,int*,int) ;
 int memset (struct iscsi_nopin*,int ,int) ;
 int qedi_clear_task_idx (struct qedi_ctx*,int ) ;
 int qedi_unsol_pdu_adjust_bdq (struct qedi_ctx*,int *,int,int,char*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qedi_process_nopin_mesg(struct qedi_ctx *qedi,
       union iscsi_cqe *cqe,
       struct iscsi_task *task,
       struct qedi_conn *qedi_conn, u16 que_idx)
{
 struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 struct iscsi_nop_in_hdr *cqe_nop_in;
 struct iscsi_nopin *hdr;
 struct qedi_cmd *cmd;
 int tgt_async_nop = 0;
 u32 lun[2];
 u32 pdu_len, num_bdqs;
 char bdq_data[QEDI_BDQ_BUF_SIZE];
 unsigned long flags;

 spin_lock_bh(&session->back_lock);
 cqe_nop_in = &cqe->cqe_common.iscsi_hdr.nop_in;

 pdu_len = cqe_nop_in->hdr_second_dword &
    ISCSI_NOP_IN_HDR_DATA_SEG_LEN_MASK;
 num_bdqs = pdu_len / QEDI_BDQ_BUF_SIZE;

 hdr = (struct iscsi_nopin *)&qedi_conn->gen_pdu.resp_hdr;
 memset(hdr, 0, sizeof(struct iscsi_hdr));
 hdr->opcode = cqe_nop_in->opcode;
 hdr->max_cmdsn = cpu_to_be32(cqe_nop_in->max_cmd_sn);
 hdr->exp_cmdsn = cpu_to_be32(cqe_nop_in->exp_cmd_sn);
 hdr->statsn = cpu_to_be32(cqe_nop_in->stat_sn);
 hdr->ttt = cpu_to_be32(cqe_nop_in->ttt);

 if (cqe->cqe_common.cqe_type == ISCSI_CQE_TYPE_UNSOLICITED) {
  spin_lock_irqsave(&qedi->hba_lock, flags);
  qedi_unsol_pdu_adjust_bdq(qedi, &cqe->cqe_unsolicited,
       pdu_len, num_bdqs, bdq_data);
  hdr->itt = RESERVED_ITT;
  tgt_async_nop = 1;
  spin_unlock_irqrestore(&qedi->hba_lock, flags);
  goto done;
 }


 if (task) {
  cmd = task->dd_data;
  hdr->flags = ISCSI_FLAG_CMD_FINAL;
  hdr->itt = build_itt(cqe->cqe_solicited.itid,
         conn->session->age);
  lun[0] = 0xffffffff;
  lun[1] = 0xffffffff;
  memcpy(&hdr->lun, lun, sizeof(struct scsi_lun));
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_TID,
     "Freeing tid=0x%x for cid=0x%x\n",
     cmd->task_id, qedi_conn->iscsi_conn_id);
  cmd->state = RESPONSE_RECEIVED;
  spin_lock(&qedi_conn->list_lock);
  if (likely(cmd->io_cmd_in_list)) {
   cmd->io_cmd_in_list = 0;
   list_del_init(&cmd->io_cmd);
   qedi_conn->active_cmd_count--;
  }

  spin_unlock(&qedi_conn->list_lock);
  qedi_clear_task_idx(qedi, cmd->task_id);
 }

done:
 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)hdr, bdq_data, pdu_len);

 spin_unlock_bh(&session->back_lock);
 return tgt_async_nop;
}
