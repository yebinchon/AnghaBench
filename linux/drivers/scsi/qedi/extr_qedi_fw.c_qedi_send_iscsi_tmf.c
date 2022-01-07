
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
typedef int tmf_pdu_header ;
typedef int task_params ;
struct scsi_lun {int dummy; } ;
struct qedi_endpoint {struct iscsi_tmf_request_hdr* sq; } ;
struct qedi_ctx {int dbg_ctx; int tasks; } ;
struct qedi_conn {int list_lock; int active_cmd_count; int active_cmd_list; scalar_t__ iscsi_conn_id; struct qedi_endpoint* ep; TYPE_1__* cls_conn; struct qedi_ctx* qedi; } ;
struct qedi_cmd {int task_id; int io_cmd_in_list; int io_cmd; } ;
struct iscsi_wqe {int dummy; } ;
struct TYPE_4__ {void* hi; void* lo; } ;
struct iscsi_tmf_request_hdr {int function; size_t conn_icid; int itid; struct iscsi_tmf_request_hdr* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct iscsi_tmf_request_hdr* context; void* ref_cmd_sn; int hdr_second_dword; int opcode; void* rtt; TYPE_2__ lun; void* cmd_sn; void* itt; } ;
struct iscsi_tm {int flags; int refcmdsn; int dlength; int opcode; int rtt; int lun; int cmdsn; } ;
struct iscsi_task_params {int function; size_t conn_icid; int itid; struct iscsi_task_params* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct iscsi_task_params* context; void* ref_cmd_sn; int hdr_second_dword; int opcode; void* rtt; TYPE_2__ lun; void* cmd_sn; void* itt; } ;
struct iscsi_task {scalar_t__ dd_data; int sc; int itt; scalar_t__ hdr; } ;
struct iscsi_conn {int dummy; } ;
struct e4_iscsi_task_context {int function; size_t conn_icid; int itid; struct e4_iscsi_task_context* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct e4_iscsi_task_context* context; void* ref_cmd_sn; int hdr_second_dword; int opcode; void* rtt; TYPE_2__ lun; void* cmd_sn; void* itt; } ;
typedef int s16 ;
struct TYPE_3__ {struct iscsi_conn* dd_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int ISCSI_FLAG_TM_FUNC_MASK ;
 void* ISCSI_RESERVED_TAG ;
 int ISCSI_TM_FUNC_ABORT_TASK ;
 int QEDI_ERR (int *,char*) ;
 void* be32_to_cpu (int ) ;
 int get_itt (int ) ;
 int init_initiator_tmf_request_task (struct iscsi_tmf_request_hdr*,struct iscsi_tmf_request_hdr*) ;
 struct iscsi_task* iscsi_itt_to_task (struct iscsi_conn*,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int memset (struct iscsi_tmf_request_hdr*,int ,int) ;
 int ntoh24 (int ) ;
 int qedi_get_task_idx (struct qedi_ctx*) ;
 scalar_t__ qedi_get_task_mem (int *,int) ;
 size_t qedi_get_wqe_idx (struct qedi_conn*) ;
 int qedi_ring_doorbell (struct qedi_conn*) ;
 void* qedi_set_itt (int,int ) ;
 int qedi_update_itt_map (struct qedi_ctx*,int,int ,struct qedi_cmd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int qedi_send_iscsi_tmf(struct qedi_conn *qedi_conn,
          struct iscsi_task *mtask)
{
 struct iscsi_tmf_request_hdr tmf_pdu_header;
 struct iscsi_task_params task_params;
 struct qedi_ctx *qedi = qedi_conn->qedi;
 struct e4_iscsi_task_context *fw_task_ctx;
 struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
 struct iscsi_task *ctask;
 struct iscsi_tm *tmf_hdr;
 struct qedi_cmd *qedi_cmd;
 struct qedi_cmd *cmd;
 struct qedi_endpoint *ep;
 u32 scsi_lun[2];
 s16 tid = 0;
 u16 sq_idx = 0;
 int rval = 0;

 tmf_hdr = (struct iscsi_tm *)mtask->hdr;
 qedi_cmd = (struct qedi_cmd *)mtask->dd_data;
 ep = qedi_conn->ep;
 if (!ep)
  return -ENODEV;

 tid = qedi_get_task_idx(qedi);
 if (tid == -1)
  return -ENOMEM;

 fw_task_ctx =
      (struct e4_iscsi_task_context *)qedi_get_task_mem(&qedi->tasks,
              tid);
 memset(fw_task_ctx, 0, sizeof(struct e4_iscsi_task_context));

 qedi_cmd->task_id = tid;

 memset(&task_params, 0, sizeof(task_params));
 memset(&tmf_pdu_header, 0, sizeof(tmf_pdu_header));


 qedi_update_itt_map(qedi, tid, mtask->itt, qedi_cmd);
 tmf_pdu_header.itt = qedi_set_itt(tid, get_itt(mtask->itt));
 tmf_pdu_header.cmd_sn = be32_to_cpu(tmf_hdr->cmdsn);

 memcpy(scsi_lun, &tmf_hdr->lun, sizeof(struct scsi_lun));
 tmf_pdu_header.lun.lo = be32_to_cpu(scsi_lun[0]);
 tmf_pdu_header.lun.hi = be32_to_cpu(scsi_lun[1]);

 if ((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
      ISCSI_TM_FUNC_ABORT_TASK) {
  ctask = iscsi_itt_to_task(conn, tmf_hdr->rtt);
  if (!ctask || !ctask->sc) {
   QEDI_ERR(&qedi->dbg_ctx,
     "Could not get reference task\n");
   return 0;
  }
  cmd = (struct qedi_cmd *)ctask->dd_data;
  tmf_pdu_header.rtt =
    qedi_set_itt(cmd->task_id,
          get_itt(tmf_hdr->rtt));
 } else {
  tmf_pdu_header.rtt = ISCSI_RESERVED_TAG;
 }

 tmf_pdu_header.opcode = tmf_hdr->opcode;
 tmf_pdu_header.function = tmf_hdr->flags;
 tmf_pdu_header.hdr_second_dword = ntoh24(tmf_hdr->dlength);
 tmf_pdu_header.ref_cmd_sn = be32_to_cpu(tmf_hdr->refcmdsn);


 task_params.context = fw_task_ctx;
 task_params.conn_icid = (u16)qedi_conn->iscsi_conn_id;
 task_params.itid = tid;
 task_params.cq_rss_number = 0;
 task_params.tx_io_size = 0;
 task_params.rx_io_size = 0;

 sq_idx = qedi_get_wqe_idx(qedi_conn);
 task_params.sqe = &ep->sq[sq_idx];

 memset(task_params.sqe, 0, sizeof(struct iscsi_wqe));
 rval = init_initiator_tmf_request_task(&task_params,
            &tmf_pdu_header);
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
