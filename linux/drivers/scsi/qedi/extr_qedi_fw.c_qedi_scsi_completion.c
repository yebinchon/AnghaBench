
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int itid; } ;
struct TYPE_11__ {scalar_t__ cqe_error_status_bits; } ;
struct TYPE_12__ {TYPE_3__ error_bits; } ;
struct iscsi_data_in_hdr {scalar_t__ status_rsvd; int reserved2; int flags; int residual_count; int reserved1; int exp_cmd_sn; int max_cmd_sn; int opcode; } ;
struct TYPE_10__ {struct iscsi_data_in_hdr data_in; } ;
struct TYPE_13__ {size_t conn_id; TYPE_4__ error_bitmap; TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_8__ cqe_solicited; TYPE_5__ cqe_common; } ;
typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct TYPE_14__ {int ptr; } ;
struct scsi_cmnd {TYPE_7__* request; TYPE_6__ SCp; } ;
struct TYPE_9__ {struct qedi_conn** conn_cid_tbl; } ;
struct qedi_ctx {int dbg_ctx; TYPE_1__ cid_que; } ;
struct qedi_conn {int iscsi_conn_id; int list_lock; int active_cmd_count; } ;
struct qedi_cmd {int io_cmd_in_list; int task_id; int state; int io_cmd; scalar_t__ sense_buffer; struct scsi_cmnd* scsi_cmd; } ;
struct iscsi_task {scalar_t__ hdr; struct qedi_cmd* dd_data; } ;
struct iscsi_session {int back_lock; int age; } ;
struct iscsi_scsi_rsp {scalar_t__ cmd_status; int flags; void* residual_count; int itt; int response; void* exp_cmdsn; void* max_cmdsn; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {scalar_t__ data; struct iscsi_session* session; } ;
struct TYPE_15__ {int q; } ;


 int CQE_ERROR_BITMAP_UNDER_RUN_ERR ;
 scalar_t__ GET_FIELD (scalar_t__,int ) ;
 int ISCSI_COMMON_HDR_DATA_SEG_LEN_MASK ;
 int ISCSI_FLAG_CMD_OVERFLOW ;
 int ISCSI_FLAG_CMD_UNDERFLOW ;
 int QEDI_INFO (int *,int ,char*,int ,int ,...) ;
 int QEDI_IO_TRACE_RSP ;
 int QEDI_LOG_INFO ;
 int QEDI_LOG_TID ;
 int QEDI_WARN (int *,char*,...) ;
 int RESPONSE_RECEIVED ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,scalar_t__,int) ;
 int build_itt (int ,int ) ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int memcpy (char*,char*,int) ;
 int qedi_clear_task_idx (struct qedi_ctx*,int ) ;
 scalar_t__ qedi_io_tracing ;
 int qedi_iscsi_unmap_sg_list (struct qedi_cmd*) ;
 int qedi_trace_io (struct qedi_ctx*,struct iscsi_task*,int ,int ) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qedi_scsi_completion(struct qedi_ctx *qedi,
     union iscsi_cqe *cqe,
     struct iscsi_task *task,
     struct iscsi_conn *conn)
{
 struct scsi_cmnd *sc_cmd;
 struct qedi_cmd *cmd = task->dd_data;
 struct iscsi_session *session = conn->session;
 struct iscsi_scsi_rsp *hdr;
 struct iscsi_data_in_hdr *cqe_data_in;
 int datalen = 0;
 struct qedi_conn *qedi_conn;
 u32 iscsi_cid;
 u8 cqe_err_bits = 0;

 iscsi_cid = cqe->cqe_common.conn_id;
 qedi_conn = qedi->cid_que.conn_cid_tbl[iscsi_cid];

 cqe_data_in = &cqe->cqe_common.iscsi_hdr.data_in;
 cqe_err_bits =
  cqe->cqe_common.error_bitmap.error_bits.cqe_error_status_bits;

 spin_lock_bh(&session->back_lock);

 sc_cmd = cmd->scsi_cmd;

 if (!sc_cmd) {
  QEDI_WARN(&qedi->dbg_ctx, "sc_cmd is NULL!\n");
  goto error;
 }

 if (!sc_cmd->SCp.ptr) {
  QEDI_WARN(&qedi->dbg_ctx,
     "SCp.ptr is NULL, returned in another context.\n");
  goto error;
 }

 if (!sc_cmd->request) {
  QEDI_WARN(&qedi->dbg_ctx,
     "sc_cmd->request is NULL, sc_cmd=%p.\n",
     sc_cmd);
  goto error;
 }

 if (!sc_cmd->request->q) {
  QEDI_WARN(&qedi->dbg_ctx,
     "request->q is NULL so request is not valid, sc_cmd=%p.\n",
     sc_cmd);
  goto error;
 }

 qedi_iscsi_unmap_sg_list(cmd);

 hdr = (struct iscsi_scsi_rsp *)task->hdr;
 hdr->opcode = cqe_data_in->opcode;
 hdr->max_cmdsn = cpu_to_be32(cqe_data_in->max_cmd_sn);
 hdr->exp_cmdsn = cpu_to_be32(cqe_data_in->exp_cmd_sn);
 hdr->itt = build_itt(cqe->cqe_solicited.itid, conn->session->age);
 hdr->response = cqe_data_in->reserved1;
 hdr->cmd_status = cqe_data_in->status_rsvd;
 hdr->flags = cqe_data_in->flags;
 hdr->residual_count = cpu_to_be32(cqe_data_in->residual_count);

 if (hdr->cmd_status == SAM_STAT_CHECK_CONDITION) {
  datalen = cqe_data_in->reserved2 &
     ISCSI_COMMON_HDR_DATA_SEG_LEN_MASK;
  memcpy((char *)conn->data, (char *)cmd->sense_buffer, datalen);
 }




 if (unlikely(cqe_err_bits &&
       GET_FIELD(cqe_err_bits, CQE_ERROR_BITMAP_UNDER_RUN_ERR))) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
     "Under flow itt=0x%x proto flags=0x%x tid=0x%x cid 0x%x fw resid 0x%x sc dlen 0x%x\n",
     hdr->itt, cqe_data_in->flags, cmd->task_id,
     qedi_conn->iscsi_conn_id, hdr->residual_count,
     scsi_bufflen(sc_cmd));
  hdr->residual_count = cpu_to_be32(scsi_bufflen(sc_cmd));
  hdr->flags |= ISCSI_FLAG_CMD_UNDERFLOW;
  hdr->flags &= (~ISCSI_FLAG_CMD_OVERFLOW);
 }

 spin_lock(&qedi_conn->list_lock);
 if (likely(cmd->io_cmd_in_list)) {
  cmd->io_cmd_in_list = 0;
  list_del_init(&cmd->io_cmd);
  qedi_conn->active_cmd_count--;
 }
 spin_unlock(&qedi_conn->list_lock);

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_TID,
    "Freeing tid=0x%x for cid=0x%x\n",
    cmd->task_id, qedi_conn->iscsi_conn_id);
 cmd->state = RESPONSE_RECEIVED;
 if (qedi_io_tracing)
  qedi_trace_io(qedi, task, cmd->task_id, QEDI_IO_TRACE_RSP);

 qedi_clear_task_idx(qedi, cmd->task_id);
 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)hdr,
        conn->data, datalen);
error:
 spin_unlock_bh(&session->back_lock);
}
