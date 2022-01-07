
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
typedef size_t u16 ;
typedef int tx_sgl_task_params ;
typedef int text_request_pdu_header ;
typedef int task_params ;
struct TYPE_3__ {void* hi; void* lo; } ;
struct scsi_sgl_task_params {int num_sges; size_t conn_icid; int itid; struct scsi_sgl_task_params* sqe; int rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct scsi_sgl_task_params* context; int total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int ttt; int itt; int flags_attr; int opcode; } ;
struct scsi_sge {int sge_len; } ;
struct qedi_endpoint {struct scsi_sgl_task_params* sq; } ;
struct qedi_ctx {int tasks; } ;
struct TYPE_4__ {scalar_t__ resp_dma_addr; scalar_t__ resp_bd_tbl; scalar_t__ req_dma_addr; scalar_t__ req_bd_tbl; } ;
struct qedi_conn {int list_lock; int active_cmd_count; int active_cmd_list; scalar_t__ iscsi_conn_id; TYPE_2__ gen_pdu; struct qedi_endpoint* ep; struct qedi_ctx* qedi; } ;
struct qedi_cmd {int task_id; int io_cmd_in_list; int io_cmd; } ;
struct iscsi_wqe {int dummy; } ;
struct iscsi_text_request_hdr {int num_sges; size_t conn_icid; int itid; struct iscsi_text_request_hdr* sqe; int rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct iscsi_text_request_hdr* context; int total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int ttt; int itt; int flags_attr; int opcode; } ;
struct iscsi_text {int dlength; int exp_statsn; int cmdsn; int ttt; int flags; int opcode; } ;
struct iscsi_task_params {int num_sges; size_t conn_icid; int itid; struct iscsi_task_params* sqe; int rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct iscsi_task_params* context; int total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int ttt; int itt; int flags_attr; int opcode; } ;
struct iscsi_task {int itt; scalar_t__ hdr; scalar_t__ dd_data; } ;
struct e4_iscsi_task_context {int num_sges; size_t conn_icid; int itid; struct e4_iscsi_task_context* sqe; int rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct e4_iscsi_task_context* context; int total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int ttt; int itt; int flags_attr; int opcode; } ;
typedef int s16 ;
typedef int rx_sgl_task_params ;


 int ENOMEM ;
 void* be32_to_cpu (int ) ;
 int get_itt (int ) ;
 int init_initiator_text_request_task (struct scsi_sgl_task_params*,struct scsi_sgl_task_params*,struct scsi_sgl_task_params*,struct scsi_sgl_task_params*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct scsi_sgl_task_params*,int ,int) ;
 void* ntoh24 (int ) ;
 int qedi_get_task_idx (struct qedi_ctx*) ;
 scalar_t__ qedi_get_task_mem (int *,int) ;
 size_t qedi_get_wqe_idx (struct qedi_conn*) ;
 int qedi_ring_doorbell (struct qedi_conn*) ;
 int qedi_set_itt (int,int ) ;
 int qedi_update_itt_map (struct qedi_ctx*,int,int ,struct qedi_cmd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int qedi_send_iscsi_text(struct qedi_conn *qedi_conn,
    struct iscsi_task *task)
{
 struct iscsi_text_request_hdr text_request_pdu_header;
 struct scsi_sgl_task_params tx_sgl_task_params;
 struct scsi_sgl_task_params rx_sgl_task_params;
 struct iscsi_task_params task_params;
 struct e4_iscsi_task_context *fw_task_ctx;
 struct qedi_ctx *qedi = qedi_conn->qedi;
 struct iscsi_text *text_hdr;
 struct scsi_sge *req_sge = ((void*)0);
 struct scsi_sge *resp_sge = ((void*)0);
 struct qedi_cmd *qedi_cmd;
 struct qedi_endpoint *ep;
 s16 tid = 0;
 u16 sq_idx = 0;
 int rval = 0;

 req_sge = (struct scsi_sge *)qedi_conn->gen_pdu.req_bd_tbl;
 resp_sge = (struct scsi_sge *)qedi_conn->gen_pdu.resp_bd_tbl;
 qedi_cmd = (struct qedi_cmd *)task->dd_data;
 text_hdr = (struct iscsi_text *)task->hdr;
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
 memset(&text_request_pdu_header, 0, sizeof(text_request_pdu_header));
 memset(&tx_sgl_task_params, 0, sizeof(tx_sgl_task_params));
 memset(&rx_sgl_task_params, 0, sizeof(rx_sgl_task_params));


 text_request_pdu_header.opcode = text_hdr->opcode;
 text_request_pdu_header.flags_attr = text_hdr->flags;

 qedi_update_itt_map(qedi, tid, task->itt, qedi_cmd);
 text_request_pdu_header.itt = qedi_set_itt(tid, get_itt(task->itt));
 text_request_pdu_header.ttt = text_hdr->ttt;
 text_request_pdu_header.cmd_sn = be32_to_cpu(text_hdr->cmdsn);
 text_request_pdu_header.exp_stat_sn = be32_to_cpu(text_hdr->exp_statsn);
 text_request_pdu_header.hdr_second_dword = ntoh24(text_hdr->dlength);


 tx_sgl_task_params.sgl =
          (struct scsi_sge *)qedi_conn->gen_pdu.req_bd_tbl;
 tx_sgl_task_params.sgl_phys_addr.lo =
      (u32)(qedi_conn->gen_pdu.req_dma_addr);
 tx_sgl_task_params.sgl_phys_addr.hi =
         (u32)((u64)qedi_conn->gen_pdu.req_dma_addr >> 32);
 tx_sgl_task_params.total_buffer_size = req_sge->sge_len;
 tx_sgl_task_params.num_sges = 1;

 rx_sgl_task_params.sgl =
         (struct scsi_sge *)qedi_conn->gen_pdu.resp_bd_tbl;
 rx_sgl_task_params.sgl_phys_addr.lo =
     (u32)(qedi_conn->gen_pdu.resp_dma_addr);
 rx_sgl_task_params.sgl_phys_addr.hi =
        (u32)((u64)qedi_conn->gen_pdu.resp_dma_addr >> 32);
 rx_sgl_task_params.total_buffer_size = resp_sge->sge_len;
 rx_sgl_task_params.num_sges = 1;


 task_params.context = fw_task_ctx;
 task_params.conn_icid = (u16)qedi_conn->iscsi_conn_id;
 task_params.itid = tid;
 task_params.cq_rss_number = 0;
 task_params.tx_io_size = ntoh24(text_hdr->dlength);
 task_params.rx_io_size = resp_sge->sge_len;

 sq_idx = qedi_get_wqe_idx(qedi_conn);
 task_params.sqe = &ep->sq[sq_idx];

 memset(task_params.sqe, 0, sizeof(struct iscsi_wqe));
 rval = init_initiator_text_request_task(&task_params,
      &text_request_pdu_header,
      &tx_sgl_task_params,
      &rx_sgl_task_params);
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
