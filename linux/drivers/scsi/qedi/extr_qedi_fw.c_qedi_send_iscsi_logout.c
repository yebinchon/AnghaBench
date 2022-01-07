
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
typedef int tx_sgl_task_params ;
typedef int task_params ;
struct scsi_sgl_task_params {int reason_code; size_t conn_icid; int itid; struct scsi_sgl_task_params* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct scsi_sgl_task_params* context; scalar_t__ cid; void* cmd_sn; void* exp_stat_sn; int itt; int opcode; } ;
struct qedi_endpoint {struct scsi_sgl_task_params* sq; } ;
struct qedi_ctx {int tasks; } ;
struct qedi_conn {int list_lock; int active_cmd_count; int active_cmd_list; scalar_t__ iscsi_conn_id; struct qedi_endpoint* ep; struct qedi_ctx* qedi; } ;
struct qedi_cmd {int task_id; int io_cmd_in_list; int io_cmd; } ;
struct iscsi_wqe {int dummy; } ;
struct iscsi_task_params {int reason_code; size_t conn_icid; int itid; struct iscsi_task_params* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct iscsi_task_params* context; scalar_t__ cid; void* cmd_sn; void* exp_stat_sn; int itt; int opcode; } ;
struct iscsi_task {int itt; scalar_t__ hdr; scalar_t__ dd_data; } ;
struct iscsi_logout_req_hdr {int reason_code; size_t conn_icid; int itid; struct iscsi_logout_req_hdr* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct iscsi_logout_req_hdr* context; scalar_t__ cid; void* cmd_sn; void* exp_stat_sn; int itt; int opcode; } ;
struct iscsi_logout {int flags; int cmdsn; int exp_statsn; int opcode; } ;
struct e4_iscsi_task_context {int reason_code; size_t conn_icid; int itid; struct e4_iscsi_task_context* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct e4_iscsi_task_context* context; scalar_t__ cid; void* cmd_sn; void* exp_stat_sn; int itt; int opcode; } ;
typedef int s16 ;
typedef int rx_sgl_task_params ;
typedef int logout_pdu_header ;


 int ENOMEM ;
 void* be32_to_cpu (int ) ;
 int get_itt (int ) ;
 int init_initiator_logout_request_task (struct scsi_sgl_task_params*,struct scsi_sgl_task_params*,int *,int *) ;
 int list_add_tail (int *,int *) ;
 int memset (struct scsi_sgl_task_params*,int ,int) ;
 int qedi_get_task_idx (struct qedi_ctx*) ;
 scalar_t__ qedi_get_task_mem (int *,int) ;
 size_t qedi_get_wqe_idx (struct qedi_conn*) ;
 int qedi_ring_doorbell (struct qedi_conn*) ;
 int qedi_set_itt (int,int ) ;
 int qedi_update_itt_map (struct qedi_ctx*,int,int ,struct qedi_cmd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int qedi_send_iscsi_logout(struct qedi_conn *qedi_conn,
      struct iscsi_task *task)
{
 struct iscsi_logout_req_hdr logout_pdu_header;
 struct scsi_sgl_task_params tx_sgl_task_params;
 struct scsi_sgl_task_params rx_sgl_task_params;
 struct iscsi_task_params task_params;
 struct e4_iscsi_task_context *fw_task_ctx;
 struct iscsi_logout *logout_hdr = ((void*)0);
 struct qedi_ctx *qedi = qedi_conn->qedi;
 struct qedi_cmd *qedi_cmd;
 struct qedi_endpoint *ep;
 s16 tid = 0;
 u16 sq_idx = 0;
 int rval = 0;

 qedi_cmd = (struct qedi_cmd *)task->dd_data;
 logout_hdr = (struct iscsi_logout *)task->hdr;
 ep = qedi_conn->ep;

 tid = qedi_get_task_idx(qedi);
 if (tid == -1)
  return -ENOMEM;

 fw_task_ctx =
      (struct e4_iscsi_task_context *)qedi_get_task_mem(&qedi->tasks,
              tid);
 memset(fw_task_ctx, 0, sizeof(struct e4_iscsi_task_context));

 qedi_cmd->task_id = tid;

 memset(&task_params, 0, sizeof(task_params));
 memset(&logout_pdu_header, 0, sizeof(logout_pdu_header));
 memset(&tx_sgl_task_params, 0, sizeof(tx_sgl_task_params));
 memset(&rx_sgl_task_params, 0, sizeof(rx_sgl_task_params));


 logout_pdu_header.opcode = logout_hdr->opcode;
 logout_pdu_header.reason_code = 0x80 | logout_hdr->flags;
 qedi_update_itt_map(qedi, tid, task->itt, qedi_cmd);
 logout_pdu_header.itt = qedi_set_itt(tid, get_itt(task->itt));
 logout_pdu_header.exp_stat_sn = be32_to_cpu(logout_hdr->exp_statsn);
 logout_pdu_header.cmd_sn = be32_to_cpu(logout_hdr->cmdsn);
 logout_pdu_header.cid = qedi_conn->iscsi_conn_id;


 task_params.context = fw_task_ctx;
 task_params.conn_icid = (u16)qedi_conn->iscsi_conn_id;
 task_params.itid = tid;
 task_params.cq_rss_number = 0;
 task_params.tx_io_size = 0;
 task_params.rx_io_size = 0;

 sq_idx = qedi_get_wqe_idx(qedi_conn);
 task_params.sqe = &ep->sq[sq_idx];
 memset(task_params.sqe, 0, sizeof(struct iscsi_wqe));

 rval = init_initiator_logout_request_task(&task_params,
        &logout_pdu_header,
        ((void*)0), ((void*)0));
 if (rval)
  return -1;

 spin_lock(&qedi_conn->list_lock);
 list_add_tail(&qedi_cmd->io_cmd, &qedi_conn->active_cmd_list);
 qedi_cmd->io_cmd_in_list = 1;
 qedi_conn->active_cmd_count++;
 spin_unlock(&qedi_conn->list_lock);

 qedi_ring_doorbell(qedi_conn);
 return 0;
}
