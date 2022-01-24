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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
typedef  int /*<<< orphan*/  tmf_pdu_header ;
typedef  int /*<<< orphan*/  task_params ;
struct scsi_lun {int dummy; } ;
struct qedi_endpoint {struct iscsi_tmf_request_hdr* sq; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  tasks; } ;
struct qedi_conn {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  active_cmd_count; int /*<<< orphan*/  active_cmd_list; scalar_t__ iscsi_conn_id; struct qedi_endpoint* ep; TYPE_1__* cls_conn; struct qedi_ctx* qedi; } ;
struct qedi_cmd {int task_id; int io_cmd_in_list; int /*<<< orphan*/  io_cmd; } ;
struct iscsi_wqe {int dummy; } ;
struct TYPE_4__ {void* hi; void* lo; } ;
struct iscsi_tmf_request_hdr {int function; size_t conn_icid; int itid; struct iscsi_tmf_request_hdr* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct iscsi_tmf_request_hdr* context; void* ref_cmd_sn; int /*<<< orphan*/  hdr_second_dword; int /*<<< orphan*/  opcode; void* rtt; TYPE_2__ lun; void* cmd_sn; void* itt; } ;
struct iscsi_tm {int flags; int /*<<< orphan*/  refcmdsn; int /*<<< orphan*/  dlength; int /*<<< orphan*/  opcode; int /*<<< orphan*/  rtt; int /*<<< orphan*/  lun; int /*<<< orphan*/  cmdsn; } ;
struct iscsi_task_params {int function; size_t conn_icid; int itid; struct iscsi_task_params* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct iscsi_task_params* context; void* ref_cmd_sn; int /*<<< orphan*/  hdr_second_dword; int /*<<< orphan*/  opcode; void* rtt; TYPE_2__ lun; void* cmd_sn; void* itt; } ;
struct iscsi_task {scalar_t__ dd_data; int /*<<< orphan*/  sc; int /*<<< orphan*/  itt; scalar_t__ hdr; } ;
struct iscsi_conn {int dummy; } ;
struct e4_iscsi_task_context {int function; size_t conn_icid; int itid; struct e4_iscsi_task_context* sqe; scalar_t__ rx_io_size; scalar_t__ tx_io_size; scalar_t__ cq_rss_number; struct e4_iscsi_task_context* context; void* ref_cmd_sn; int /*<<< orphan*/  hdr_second_dword; int /*<<< orphan*/  opcode; void* rtt; TYPE_2__ lun; void* cmd_sn; void* itt; } ;
typedef  int s16 ;
struct TYPE_3__ {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ISCSI_FLAG_TM_FUNC_MASK ; 
 void* ISCSI_RESERVED_TAG ; 
 int ISCSI_TM_FUNC_ABORT_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iscsi_tmf_request_hdr*,struct iscsi_tmf_request_hdr*) ; 
 struct iscsi_task* FUNC4 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_tmf_request_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qedi_ctx*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC11 (struct qedi_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct qedi_conn*) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct qedi_ctx*,int,int /*<<< orphan*/ ,struct qedi_cmd*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct qedi_conn *qedi_conn,
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

	tid = FUNC9(qedi);
	if (tid == -1)
		return -ENOMEM;

	fw_task_ctx =
	     (struct e4_iscsi_task_context *)FUNC10(&qedi->tasks,
							       tid);
	FUNC7(fw_task_ctx, 0, sizeof(struct e4_iscsi_task_context));

	qedi_cmd->task_id = tid;

	FUNC7(&task_params, 0, sizeof(task_params));
	FUNC7(&tmf_pdu_header, 0, sizeof(tmf_pdu_header));

	/* Update header info */
	FUNC14(qedi, tid, mtask->itt, qedi_cmd);
	tmf_pdu_header.itt = FUNC13(tid, FUNC2(mtask->itt));
	tmf_pdu_header.cmd_sn = FUNC1(tmf_hdr->cmdsn);

	FUNC6(scsi_lun, &tmf_hdr->lun, sizeof(struct scsi_lun));
	tmf_pdu_header.lun.lo = FUNC1(scsi_lun[0]);
	tmf_pdu_header.lun.hi = FUNC1(scsi_lun[1]);

	if ((tmf_hdr->flags & ISCSI_FLAG_TM_FUNC_MASK) ==
	     ISCSI_TM_FUNC_ABORT_TASK) {
		ctask = FUNC4(conn, tmf_hdr->rtt);
		if (!ctask || !ctask->sc) {
			FUNC0(&qedi->dbg_ctx,
				 "Could not get reference task\n");
			return 0;
		}
		cmd = (struct qedi_cmd *)ctask->dd_data;
		tmf_pdu_header.rtt =
				FUNC13(cmd->task_id,
					     FUNC2(tmf_hdr->rtt));
	} else {
		tmf_pdu_header.rtt = ISCSI_RESERVED_TAG;
	}

	tmf_pdu_header.opcode = tmf_hdr->opcode;
	tmf_pdu_header.function = tmf_hdr->flags;
	tmf_pdu_header.hdr_second_dword = FUNC8(tmf_hdr->dlength);
	tmf_pdu_header.ref_cmd_sn = FUNC1(tmf_hdr->refcmdsn);

	/* Fill fw input params */
	task_params.context = fw_task_ctx;
	task_params.conn_icid = (u16)qedi_conn->iscsi_conn_id;
	task_params.itid = tid;
	task_params.cq_rss_number = 0;
	task_params.tx_io_size = 0;
	task_params.rx_io_size = 0;

	sq_idx = FUNC11(qedi_conn);
	task_params.sqe = &ep->sq[sq_idx];

	FUNC7(task_params.sqe, 0, sizeof(struct iscsi_wqe));
	rval = FUNC3(&task_params,
					       &tmf_pdu_header);
	if (rval)
		return -1;

	FUNC15(&qedi_conn->list_lock);
	FUNC5(&qedi_cmd->io_cmd, &qedi_conn->active_cmd_list);
	qedi_cmd->io_cmd_in_list = true;
	qedi_conn->active_cmd_count++;
	FUNC16(&qedi_conn->list_lock);

	FUNC12(qedi_conn);
	return 0;
}