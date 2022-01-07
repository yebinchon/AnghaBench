
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
struct iscsi_login_response_hdr {int hdr_second_dword; int status_detail; int status_class; int max_cmd_sn; int exp_cmd_sn; int stat_sn; int tsih; int flags_attr; int opcode; } ;
struct TYPE_7__ {struct iscsi_login_response_hdr login_response; } ;
struct TYPE_8__ {TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_4__ cqe_solicited; TYPE_3__ cqe_common; } ;
struct qedi_ctx {int dbg_ctx; int tasks; } ;
struct TYPE_10__ {scalar_t__ resp_buf; scalar_t__ resp_wr_ptr; int resp_hdr; } ;
struct qedi_conn {int iscsi_conn_id; TYPE_5__ gen_pdu; int active_cmd_count; TYPE_1__* cls_conn; } ;
struct qedi_cmd {int io_cmd_in_list; int task_id; int state; int io_cmd; } ;
struct iscsi_task {scalar_t__ dd_data; } ;
struct iscsi_session {int back_lock; int age; } ;
struct iscsi_login_rsp {int status_detail; int status_class; void* max_cmdsn; void* exp_cmdsn; void* statsn; int tsih; int itt; int dlength; scalar_t__ hlength; int flags; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct e4_iscsi_task_context {int status_detail; int status_class; void* max_cmdsn; void* exp_cmdsn; void* statsn; int tsih; int itt; int dlength; scalar_t__ hlength; int flags; int opcode; } ;
struct TYPE_6__ {struct iscsi_conn* dd_data; } ;


 int ISCSI_LOGIN_RESPONSE_HDR_DATA_SEG_LEN_MASK ;
 int QEDI_INFO (int *,int ,char*,int ,int ) ;
 int QEDI_LOG_TID ;
 int RESPONSE_RECEIVED ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,scalar_t__,scalar_t__) ;
 int build_itt (int ,int ) ;
 void* cpu_to_be32 (int ) ;
 int hton24 (int ,int) ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int memset (struct iscsi_login_rsp*,char,int) ;
 int qedi_clear_task_idx (struct qedi_ctx*,int ) ;
 struct iscsi_login_rsp* qedi_get_task_mem (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qedi_process_login_resp(struct qedi_ctx *qedi,
        union iscsi_cqe *cqe,
        struct iscsi_task *task,
        struct qedi_conn *qedi_conn)
{
 struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 struct e4_iscsi_task_context *task_ctx;
 struct iscsi_login_rsp *resp_hdr_ptr;
 struct iscsi_login_response_hdr *cqe_login_response;
 struct qedi_cmd *cmd;
 int pld_len;

 cmd = (struct qedi_cmd *)task->dd_data;

 cqe_login_response = &cqe->cqe_common.iscsi_hdr.login_response;
 task_ctx = qedi_get_task_mem(&qedi->tasks, cmd->task_id);

 spin_lock(&session->back_lock);
 resp_hdr_ptr = (struct iscsi_login_rsp *)&qedi_conn->gen_pdu.resp_hdr;
 memset(resp_hdr_ptr, 0, sizeof(struct iscsi_login_rsp));
 resp_hdr_ptr->opcode = cqe_login_response->opcode;
 resp_hdr_ptr->flags = cqe_login_response->flags_attr;
 resp_hdr_ptr->hlength = 0;

 hton24(resp_hdr_ptr->dlength,
        (cqe_login_response->hdr_second_dword &
  ISCSI_LOGIN_RESPONSE_HDR_DATA_SEG_LEN_MASK));
 resp_hdr_ptr->itt = build_itt(cqe->cqe_solicited.itid,
          conn->session->age);
 resp_hdr_ptr->tsih = cqe_login_response->tsih;
 resp_hdr_ptr->statsn = cpu_to_be32(cqe_login_response->stat_sn);
 resp_hdr_ptr->exp_cmdsn = cpu_to_be32(cqe_login_response->exp_cmd_sn);
 resp_hdr_ptr->max_cmdsn = cpu_to_be32(cqe_login_response->max_cmd_sn);
 resp_hdr_ptr->status_class = cqe_login_response->status_class;
 resp_hdr_ptr->status_detail = cqe_login_response->status_detail;
 pld_len = cqe_login_response->hdr_second_dword &
    ISCSI_LOGIN_RESPONSE_HDR_DATA_SEG_LEN_MASK;
 qedi_conn->gen_pdu.resp_wr_ptr = qedi_conn->gen_pdu.resp_buf + pld_len;

 if (likely(cmd->io_cmd_in_list)) {
  cmd->io_cmd_in_list = 0;
  list_del_init(&cmd->io_cmd);
  qedi_conn->active_cmd_count--;
 }

 memset(task_ctx, '\0', sizeof(*task_ctx));

 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)resp_hdr_ptr,
        qedi_conn->gen_pdu.resp_buf,
        (qedi_conn->gen_pdu.resp_wr_ptr -
        qedi_conn->gen_pdu.resp_buf));

 spin_unlock(&session->back_lock);
 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_TID,
    "Freeing tid=0x%x for cid=0x%x\n",
    cmd->task_id, qedi_conn->iscsi_conn_id);
 cmd->state = RESPONSE_RECEIVED;
 qedi_clear_task_idx(qedi, cmd->task_id);
}
