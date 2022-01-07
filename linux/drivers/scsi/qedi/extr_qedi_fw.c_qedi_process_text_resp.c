
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int itid; } ;
struct iscsi_text_response_hdr {int hdr_second_dword; int max_cmd_sn; int exp_cmd_sn; int stat_sn; int ttt; int flags; int opcode; } ;
struct TYPE_7__ {struct iscsi_text_response_hdr text_response; } ;
struct TYPE_8__ {TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_4__ cqe_solicited; TYPE_3__ cqe_common; } ;
struct qedi_ctx {int dbg_ctx; int tasks; } ;
struct TYPE_10__ {scalar_t__ resp_buf; scalar_t__ resp_wr_ptr; int resp_hdr; } ;
struct qedi_conn {TYPE_5__ gen_pdu; int iscsi_conn_id; int active_cmd_count; TYPE_1__* cls_conn; } ;
struct qedi_cmd {int io_cmd_in_list; int task_id; int state; int io_cmd; } ;
struct iscsi_text_rsp {void* max_cmdsn; void* exp_cmdsn; void* statsn; int ttt; int itt; int dlength; scalar_t__ hlength; int flags; int opcode; } ;
struct iscsi_task {scalar_t__ dd_data; } ;
struct iscsi_session {int back_lock; int age; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct e4_iscsi_task_context {void* max_cmdsn; void* exp_cmdsn; void* statsn; int ttt; int itt; int dlength; scalar_t__ hlength; int flags; int opcode; } ;
struct TYPE_6__ {struct iscsi_conn* dd_data; } ;


 int ISCSI_TEXT_RESPONSE_HDR_DATA_SEG_LEN_MASK ;
 int QEDI_INFO (int *,int ,char*,int ,int ,...) ;
 int QEDI_LOG_INFO ;
 int QEDI_LOG_TID ;
 int RESPONSE_RECEIVED ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,scalar_t__,scalar_t__) ;
 int build_itt (int ,int ) ;
 void* cpu_to_be32 (int ) ;
 int hton24 (int ,int) ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int memset (struct iscsi_text_rsp*,char,int) ;
 int qedi_clear_task_idx (struct qedi_ctx*,int ) ;
 struct iscsi_text_rsp* qedi_get_task_mem (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qedi_process_text_resp(struct qedi_ctx *qedi,
       union iscsi_cqe *cqe,
       struct iscsi_task *task,
       struct qedi_conn *qedi_conn)
{
 struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 struct e4_iscsi_task_context *task_ctx;
 struct iscsi_text_rsp *resp_hdr_ptr;
 struct iscsi_text_response_hdr *cqe_text_response;
 struct qedi_cmd *cmd;
 int pld_len;

 cmd = (struct qedi_cmd *)task->dd_data;
 task_ctx = qedi_get_task_mem(&qedi->tasks, cmd->task_id);

 cqe_text_response = &cqe->cqe_common.iscsi_hdr.text_response;
 spin_lock(&session->back_lock);
 resp_hdr_ptr = (struct iscsi_text_rsp *)&qedi_conn->gen_pdu.resp_hdr;
 memset(resp_hdr_ptr, 0, sizeof(struct iscsi_hdr));
 resp_hdr_ptr->opcode = cqe_text_response->opcode;
 resp_hdr_ptr->flags = cqe_text_response->flags;
 resp_hdr_ptr->hlength = 0;

 hton24(resp_hdr_ptr->dlength,
        (cqe_text_response->hdr_second_dword &
  ISCSI_TEXT_RESPONSE_HDR_DATA_SEG_LEN_MASK));

 resp_hdr_ptr->itt = build_itt(cqe->cqe_solicited.itid,
          conn->session->age);
 resp_hdr_ptr->ttt = cqe_text_response->ttt;
 resp_hdr_ptr->statsn = cpu_to_be32(cqe_text_response->stat_sn);
 resp_hdr_ptr->exp_cmdsn = cpu_to_be32(cqe_text_response->exp_cmd_sn);
 resp_hdr_ptr->max_cmdsn = cpu_to_be32(cqe_text_response->max_cmd_sn);

 pld_len = cqe_text_response->hdr_second_dword &
    ISCSI_TEXT_RESPONSE_HDR_DATA_SEG_LEN_MASK;
 qedi_conn->gen_pdu.resp_wr_ptr = qedi_conn->gen_pdu.resp_buf + pld_len;

 memset(task_ctx, '\0', sizeof(*task_ctx));

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_TID,
    "Freeing tid=0x%x for cid=0x%x\n",
    cmd->task_id, qedi_conn->iscsi_conn_id);

 if (likely(cmd->io_cmd_in_list)) {
  cmd->io_cmd_in_list = 0;
  list_del_init(&cmd->io_cmd);
  qedi_conn->active_cmd_count--;
 } else {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO,
     "Active cmd list node already deleted, tid=0x%x, cid=0x%x, io_cmd_node=%p\n",
     cmd->task_id, qedi_conn->iscsi_conn_id,
     &cmd->io_cmd);
 }

 cmd->state = RESPONSE_RECEIVED;
 qedi_clear_task_idx(qedi, cmd->task_id);

 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)resp_hdr_ptr,
        qedi_conn->gen_pdu.resp_buf,
        (qedi_conn->gen_pdu.resp_wr_ptr -
         qedi_conn->gen_pdu.resp_buf));
 spin_unlock(&session->back_lock);
}
