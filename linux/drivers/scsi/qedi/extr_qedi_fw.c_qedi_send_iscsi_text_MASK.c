#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  void* u32 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  tx_sgl_task_params ;
typedef  int /*<<< orphan*/  text_request_pdu_header ;
typedef  int /*<<< orphan*/  task_params ;
struct TYPE_3__ {void* hi; void* lo; } ;
struct scsi_sgl_task_params {int num_sges; size_t conn_icid; int itid; struct scsi_sgl_task_params* sqe; int /*<<< orphan*/  rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct scsi_sgl_task_params* context; int /*<<< orphan*/  total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int /*<<< orphan*/  ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
struct scsi_sge {int /*<<< orphan*/  sge_len; } ;
struct qedi_endpoint {struct scsi_sgl_task_params* sq; } ;
struct qedi_ctx {int /*<<< orphan*/  tasks; } ;
struct TYPE_4__ {scalar_t__ resp_dma_addr; scalar_t__ resp_bd_tbl; scalar_t__ req_dma_addr; scalar_t__ req_bd_tbl; } ;
struct qedi_conn {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  active_cmd_count; int /*<<< orphan*/  active_cmd_list; scalar_t__ iscsi_conn_id; TYPE_2__ gen_pdu; struct qedi_endpoint* ep; struct qedi_ctx* qedi; } ;
struct qedi_cmd {int task_id; int io_cmd_in_list; int /*<<< orphan*/  io_cmd; } ;
struct iscsi_wqe {int dummy; } ;
struct iscsi_text_request_hdr {int num_sges; size_t conn_icid; int itid; struct iscsi_text_request_hdr* sqe; int /*<<< orphan*/  rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct iscsi_text_request_hdr* context; int /*<<< orphan*/  total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int /*<<< orphan*/  ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
struct iscsi_text {int /*<<< orphan*/  dlength; int /*<<< orphan*/  exp_statsn; int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  ttt; int /*<<< orphan*/  flags; int /*<<< orphan*/  opcode; } ;
struct iscsi_task_params {int num_sges; size_t conn_icid; int itid; struct iscsi_task_params* sqe; int /*<<< orphan*/  rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct iscsi_task_params* context; int /*<<< orphan*/  total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int /*<<< orphan*/  ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
struct iscsi_task {int /*<<< orphan*/  itt; scalar_t__ hdr; scalar_t__ dd_data; } ;
struct e4_iscsi_task_context {int num_sges; size_t conn_icid; int itid; struct e4_iscsi_task_context* sqe; int /*<<< orphan*/  rx_io_size; void* tx_io_size; scalar_t__ cq_rss_number; struct e4_iscsi_task_context* context; int /*<<< orphan*/  total_buffer_size; TYPE_1__ sgl_phys_addr; struct scsi_sge* sgl; void* hdr_second_dword; void* exp_stat_sn; void* cmd_sn; int /*<<< orphan*/  ttt; int /*<<< orphan*/  itt; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  rx_sgl_task_params ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scsi_sgl_task_params*,struct scsi_sgl_task_params*,struct scsi_sgl_task_params*,struct scsi_sgl_task_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_sgl_task_params*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qedi_ctx*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC8 (struct qedi_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct qedi_conn*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct qedi_ctx*,int,int /*<<< orphan*/ ,struct qedi_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct qedi_conn *qedi_conn,
			 struct iscsi_task *task)
{
	struct iscsi_text_request_hdr text_request_pdu_header;
	struct scsi_sgl_task_params tx_sgl_task_params;
	struct scsi_sgl_task_params rx_sgl_task_params;
	struct iscsi_task_params task_params;
	struct e4_iscsi_task_context *fw_task_ctx;
	struct qedi_ctx *qedi = qedi_conn->qedi;
	struct iscsi_text *text_hdr;
	struct scsi_sge *req_sge = NULL;
	struct scsi_sge *resp_sge = NULL;
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

	tid = FUNC6(qedi);
	if (tid == -1)
		return -ENOMEM;

	fw_task_ctx =
	     (struct e4_iscsi_task_context *)FUNC7(&qedi->tasks,
							       tid);
	FUNC4(fw_task_ctx, 0, sizeof(struct e4_iscsi_task_context));

	qedi_cmd->task_id = tid;

	FUNC4(&task_params, 0, sizeof(task_params));
	FUNC4(&text_request_pdu_header, 0, sizeof(text_request_pdu_header));
	FUNC4(&tx_sgl_task_params, 0, sizeof(tx_sgl_task_params));
	FUNC4(&rx_sgl_task_params, 0, sizeof(rx_sgl_task_params));

	/* Update header info */
	text_request_pdu_header.opcode = text_hdr->opcode;
	text_request_pdu_header.flags_attr = text_hdr->flags;

	FUNC11(qedi, tid, task->itt, qedi_cmd);
	text_request_pdu_header.itt = FUNC10(tid, FUNC1(task->itt));
	text_request_pdu_header.ttt = text_hdr->ttt;
	text_request_pdu_header.cmd_sn = FUNC0(text_hdr->cmdsn);
	text_request_pdu_header.exp_stat_sn = FUNC0(text_hdr->exp_statsn);
	text_request_pdu_header.hdr_second_dword = FUNC5(text_hdr->dlength);

	/* Fill tx AHS and rx buffer */
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

	/* Fill fw input params */
	task_params.context = fw_task_ctx;
	task_params.conn_icid = (u16)qedi_conn->iscsi_conn_id;
	task_params.itid = tid;
	task_params.cq_rss_number = 0;
	task_params.tx_io_size = FUNC5(text_hdr->dlength);
	task_params.rx_io_size = resp_sge->sge_len;

	sq_idx = FUNC8(qedi_conn);
	task_params.sqe = &ep->sq[sq_idx];

	FUNC4(task_params.sqe, 0, sizeof(struct iscsi_wqe));
	rval = FUNC2(&task_params,
						&text_request_pdu_header,
						&tx_sgl_task_params,
						&rx_sgl_task_params);
	if (rval)
		return -1;

	FUNC12(&qedi_conn->list_lock);
	FUNC3(&qedi_cmd->io_cmd, &qedi_conn->active_cmd_list);
	qedi_cmd->io_cmd_in_list = true;
	qedi_conn->active_cmd_count++;
	FUNC13(&qedi_conn->list_lock);

	FUNC9(qedi_conn);
	return 0;
}