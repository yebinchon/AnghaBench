#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  void* u32 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  tx_sgl_task_params ;
typedef  int /*<<< orphan*/  task_params ;
struct TYPE_5__ {void* hi; void* lo; } ;
struct TYPE_4__ {void* hi; void* lo; } ;
struct scsi_sgl_task_params {int total_buffer_size; int num_sges; size_t conn_icid; int itid; int tx_io_size; int rx_io_size; struct scsi_sgl_task_params* sqe; scalar_t__ cq_rss_number; struct scsi_sgl_task_params* context; TYPE_2__ sgl_phys_addr; struct scsi_sge* sgl; void* ttt; void* itt; void* exp_stat_sn; void* cmd_sn; TYPE_1__ lun; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
struct scsi_sge {int sge_len; } ;
struct scsi_lun {int dummy; } ;
struct qedi_endpoint {struct scsi_sgl_task_params* sq; } ;
struct qedi_ctx {int /*<<< orphan*/  tasks; } ;
struct TYPE_6__ {scalar_t__ resp_dma_addr; scalar_t__ resp_bd_tbl; scalar_t__ req_dma_addr; scalar_t__ req_bd_tbl; } ;
struct qedi_conn {scalar_t__ iscsi_conn_id; TYPE_3__ gen_pdu; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  active_cmd_count; int /*<<< orphan*/  active_cmd_list; struct qedi_endpoint* ep; struct qedi_ctx* qedi; } ;
struct qedi_cmd {int task_id; int io_cmd_in_list; int /*<<< orphan*/  io_cmd; } ;
struct iscsi_wqe {int dummy; } ;
struct iscsi_task_params {int total_buffer_size; int num_sges; size_t conn_icid; int itid; int tx_io_size; int rx_io_size; struct iscsi_task_params* sqe; scalar_t__ cq_rss_number; struct iscsi_task_params* context; TYPE_2__ sgl_phys_addr; struct scsi_sge* sgl; void* ttt; void* itt; void* exp_stat_sn; void* cmd_sn; TYPE_1__ lun; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
struct iscsi_task {int /*<<< orphan*/  itt; scalar_t__ hdr; scalar_t__ dd_data; } ;
struct iscsi_nopout {void* cmdsn; void* exp_statsn; scalar_t__ ttt; void* itt; int /*<<< orphan*/  lun; int /*<<< orphan*/  opcode; } ;
struct iscsi_nop_out_hdr {int total_buffer_size; int num_sges; size_t conn_icid; int itid; int tx_io_size; int rx_io_size; struct iscsi_nop_out_hdr* sqe; scalar_t__ cq_rss_number; struct iscsi_nop_out_hdr* context; TYPE_2__ sgl_phys_addr; struct scsi_sge* sgl; void* ttt; void* itt; void* exp_stat_sn; void* cmd_sn; TYPE_1__ lun; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
struct e4_iscsi_task_context {int total_buffer_size; int num_sges; size_t conn_icid; int itid; int tx_io_size; int rx_io_size; struct e4_iscsi_task_context* sqe; scalar_t__ cq_rss_number; struct e4_iscsi_task_context* context; TYPE_2__ sgl_phys_addr; struct scsi_sge* sgl; void* ttt; void* itt; void* exp_stat_sn; void* cmd_sn; TYPE_1__ lun; int /*<<< orphan*/  flags_attr; int /*<<< orphan*/  opcode; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  rx_sgl_task_params ;
typedef  int /*<<< orphan*/  nop_out_pdu_header ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ISCSI_NOP_OUT_HDR_CONST1 ; 
 int /*<<< orphan*/  ISCSI_NOP_OUT_HDR_RSRV ; 
 scalar_t__ ISCSI_TTT_ALL_ONES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct scsi_sgl_task_params*,struct scsi_sgl_task_params*,struct scsi_sgl_task_params*,struct scsi_sgl_task_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_sgl_task_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct qedi_ctx*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC9 (struct qedi_conn*) ; 
 int /*<<< orphan*/  FUNC10 (struct qedi_conn*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct qedi_ctx*,int,int /*<<< orphan*/ ,struct qedi_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct qedi_conn *qedi_conn,
			   struct iscsi_task *task,
			   char *datap, int data_len, int unsol)
{
	struct iscsi_nop_out_hdr nop_out_pdu_header;
	struct scsi_sgl_task_params tx_sgl_task_params;
	struct scsi_sgl_task_params rx_sgl_task_params;
	struct iscsi_task_params task_params;
	struct qedi_ctx *qedi = qedi_conn->qedi;
	struct e4_iscsi_task_context *fw_task_ctx;
	struct iscsi_nopout *nopout_hdr;
	struct scsi_sge *resp_sge = NULL;
	struct qedi_cmd *qedi_cmd;
	struct qedi_endpoint *ep;
	u32 scsi_lun[2];
	s16 tid = 0;
	u16 sq_idx = 0;
	int rval = 0;

	resp_sge = (struct scsi_sge *)qedi_conn->gen_pdu.resp_bd_tbl;
	qedi_cmd = (struct qedi_cmd *)task->dd_data;
	nopout_hdr = (struct iscsi_nopout *)task->hdr;
	ep = qedi_conn->ep;

	tid = FUNC7(qedi);
	if (tid == -1)
		return -ENOMEM;

	fw_task_ctx =
	     (struct e4_iscsi_task_context *)FUNC8(&qedi->tasks,
							       tid);
	FUNC6(fw_task_ctx, 0, sizeof(struct e4_iscsi_task_context));

	qedi_cmd->task_id = tid;

	FUNC6(&task_params, 0, sizeof(task_params));
	FUNC6(&nop_out_pdu_header, 0, sizeof(nop_out_pdu_header));
	FUNC6(&tx_sgl_task_params, 0, sizeof(tx_sgl_task_params));
	FUNC6(&rx_sgl_task_params, 0, sizeof(rx_sgl_task_params));

	/* Update header info */
	nop_out_pdu_header.opcode = nopout_hdr->opcode;
	FUNC0(nop_out_pdu_header.flags_attr, ISCSI_NOP_OUT_HDR_CONST1, 1);
	FUNC0(nop_out_pdu_header.flags_attr, ISCSI_NOP_OUT_HDR_RSRV, 0);

	FUNC5(scsi_lun, &nopout_hdr->lun, sizeof(struct scsi_lun));
	nop_out_pdu_header.lun.lo = FUNC1(scsi_lun[0]);
	nop_out_pdu_header.lun.hi = FUNC1(scsi_lun[1]);
	nop_out_pdu_header.cmd_sn = FUNC1(nopout_hdr->cmdsn);
	nop_out_pdu_header.exp_stat_sn = FUNC1(nopout_hdr->exp_statsn);

	FUNC12(qedi, tid, task->itt, qedi_cmd);

	if (nopout_hdr->ttt != ISCSI_TTT_ALL_ONES) {
		nop_out_pdu_header.itt = FUNC1(nopout_hdr->itt);
		nop_out_pdu_header.ttt = FUNC1(nopout_hdr->ttt);
	} else {
		nop_out_pdu_header.itt = FUNC11(tid, FUNC2(task->itt));
		nop_out_pdu_header.ttt = ISCSI_TTT_ALL_ONES;

		FUNC13(&qedi_conn->list_lock);
		FUNC4(&qedi_cmd->io_cmd, &qedi_conn->active_cmd_list);
		qedi_cmd->io_cmd_in_list = true;
		qedi_conn->active_cmd_count++;
		FUNC14(&qedi_conn->list_lock);
	}

	/* Fill tx AHS and rx buffer */
	if (data_len) {
		tx_sgl_task_params.sgl =
			       (struct scsi_sge *)qedi_conn->gen_pdu.req_bd_tbl;
		tx_sgl_task_params.sgl_phys_addr.lo =
					 (u32)(qedi_conn->gen_pdu.req_dma_addr);
		tx_sgl_task_params.sgl_phys_addr.hi =
			      (u32)((u64)qedi_conn->gen_pdu.req_dma_addr >> 32);
		tx_sgl_task_params.total_buffer_size = data_len;
		tx_sgl_task_params.num_sges = 1;

		rx_sgl_task_params.sgl =
			      (struct scsi_sge *)qedi_conn->gen_pdu.resp_bd_tbl;
		rx_sgl_task_params.sgl_phys_addr.lo =
					(u32)(qedi_conn->gen_pdu.resp_dma_addr);
		rx_sgl_task_params.sgl_phys_addr.hi =
			     (u32)((u64)qedi_conn->gen_pdu.resp_dma_addr >> 32);
		rx_sgl_task_params.total_buffer_size = resp_sge->sge_len;
		rx_sgl_task_params.num_sges = 1;
	}

	/* Fill fw input params */
	task_params.context = fw_task_ctx;
	task_params.conn_icid = (u16)qedi_conn->iscsi_conn_id;
	task_params.itid = tid;
	task_params.cq_rss_number = 0;
	task_params.tx_io_size = data_len;
	task_params.rx_io_size = resp_sge->sge_len;

	sq_idx = FUNC9(qedi_conn);
	task_params.sqe = &ep->sq[sq_idx];

	FUNC6(task_params.sqe, 0, sizeof(struct iscsi_wqe));
	rval = FUNC3(&task_params,
					   &nop_out_pdu_header,
					   &tx_sgl_task_params,
					   &rx_sgl_task_params);
	if (rval)
		return -1;

	FUNC10(qedi_conn);
	return 0;
}