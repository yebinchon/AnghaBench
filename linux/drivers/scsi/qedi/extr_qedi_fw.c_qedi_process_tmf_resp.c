
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
struct iscsi_tmf_response_hdr {int hdr_second_dword; int max_cmd_sn; int exp_cmd_sn; int stat_sn; int hdr_response; int hdr_flags; int opcode; } ;
struct TYPE_7__ {struct iscsi_tmf_response_hdr tmf_response; } ;
struct TYPE_8__ {TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_4__ cqe_solicited; TYPE_3__ cqe_common; } ;
struct qedi_ctx {int tmf_thread; int dbg_ctx; } ;
struct qedi_conn {int active_cmd_count; int iscsi_conn_id; TYPE_1__* cls_conn; } ;
struct qedi_cmd {int io_cmd_in_list; int task_id; int tmf_work; int io_cmd; TYPE_5__* task; scalar_t__ tmf_resp_buf; } ;
struct iscsi_tm_rsp {void* max_cmdsn; void* exp_cmdsn; void* statsn; int itt; int dlength; scalar_t__ hlength; int response; int flags; int opcode; } ;
struct iscsi_tm {int flags; } ;
struct iscsi_task {struct qedi_cmd* dd_data; } ;
struct iscsi_session {int back_lock; int age; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct TYPE_10__ {scalar_t__ hdr; } ;
struct TYPE_6__ {struct iscsi_conn* dd_data; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int ISCSI_FLAG_TM_FUNC_MASK ;
 int ISCSI_TMF_RESPONSE_HDR_DATA_SEG_LEN_MASK ;
 int ISCSI_TM_FUNC_LOGICAL_UNIT_RESET ;
 int ISCSI_TM_FUNC_TARGET_COLD_RESET ;
 int ISCSI_TM_FUNC_TARGET_WARM_RESET ;
 int QEDI_ERR (int *,char*,int ) ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 int build_itt (int ,int ) ;
 void* cpu_to_be32 (int ) ;
 int hton24 (int ,int) ;
 int kfree (struct iscsi_tm_rsp*) ;
 scalar_t__ kzalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int memset (struct iscsi_tm_rsp*,int ,int) ;
 int qedi_clear_task_idx (struct qedi_ctx*,int ) ;
 int qedi_tmf_resp_work ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qedi_process_tmf_resp(struct qedi_ctx *qedi,
      union iscsi_cqe *cqe,
      struct iscsi_task *task,
      struct qedi_conn *qedi_conn)

{
 struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 struct iscsi_tmf_response_hdr *cqe_tmp_response;
 struct iscsi_tm_rsp *resp_hdr_ptr;
 struct iscsi_tm *tmf_hdr;
 struct qedi_cmd *qedi_cmd = ((void*)0);

 cqe_tmp_response = &cqe->cqe_common.iscsi_hdr.tmf_response;

 qedi_cmd = task->dd_data;
 qedi_cmd->tmf_resp_buf = kzalloc(sizeof(*resp_hdr_ptr), GFP_ATOMIC);
 if (!qedi_cmd->tmf_resp_buf) {
  QEDI_ERR(&qedi->dbg_ctx,
    "Failed to allocate resp buf, cid=0x%x\n",
     qedi_conn->iscsi_conn_id);
  return;
 }

 spin_lock(&session->back_lock);
 resp_hdr_ptr = (struct iscsi_tm_rsp *)qedi_cmd->tmf_resp_buf;
 memset(resp_hdr_ptr, 0, sizeof(struct iscsi_tm_rsp));


 resp_hdr_ptr->opcode = cqe_tmp_response->opcode;
 resp_hdr_ptr->flags = cqe_tmp_response->hdr_flags;
 resp_hdr_ptr->response = cqe_tmp_response->hdr_response;
 resp_hdr_ptr->hlength = 0;

 hton24(resp_hdr_ptr->dlength,
        (cqe_tmp_response->hdr_second_dword &
  ISCSI_TMF_RESPONSE_HDR_DATA_SEG_LEN_MASK));
 resp_hdr_ptr->itt = build_itt(cqe->cqe_solicited.itid,
          conn->session->age);
 resp_hdr_ptr->statsn = cpu_to_be32(cqe_tmp_response->stat_sn);
 resp_hdr_ptr->exp_cmdsn = cpu_to_be32(cqe_tmp_response->exp_cmd_sn);
 resp_hdr_ptr->max_cmdsn = cpu_to_be32(cqe_tmp_response->max_cmd_sn);

 tmf_hdr = (struct iscsi_tm *)qedi_cmd->task->hdr;

 if (likely(qedi_cmd->io_cmd_in_list)) {
  qedi_cmd->io_cmd_in_list = 0;
  list_del_init(&qedi_cmd->io_cmd);
  qedi_conn->active_cmd_count--;
 }

 if (((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
       ISCSI_TM_FUNC_LOGICAL_UNIT_RESET) ||
     ((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
       ISCSI_TM_FUNC_TARGET_WARM_RESET) ||
     ((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
       ISCSI_TM_FUNC_TARGET_COLD_RESET)) {
  INIT_WORK(&qedi_cmd->tmf_work, qedi_tmf_resp_work);
  queue_work(qedi->tmf_thread, &qedi_cmd->tmf_work);
  goto unblock_sess;
 }

 qedi_clear_task_idx(qedi, qedi_cmd->task_id);

 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)resp_hdr_ptr, ((void*)0), 0);
 kfree(resp_hdr_ptr);

unblock_sess:
 spin_unlock(&session->back_lock);
}
