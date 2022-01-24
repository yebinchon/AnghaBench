#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  itid; } ;
struct TYPE_11__ {scalar_t__ cqe_error_status_bits; } ;
struct TYPE_12__ {TYPE_3__ error_bits; } ;
struct iscsi_data_in_hdr {scalar_t__ status_rsvd; int reserved2; int /*<<< orphan*/  flags; int /*<<< orphan*/  residual_count; int /*<<< orphan*/  reserved1; int /*<<< orphan*/  exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  opcode; } ;
struct TYPE_10__ {struct iscsi_data_in_hdr data_in; } ;
struct TYPE_13__ {size_t conn_id; TYPE_4__ error_bitmap; TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_8__ cqe_solicited; TYPE_5__ cqe_common; } ;
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct TYPE_14__ {int /*<<< orphan*/  ptr; } ;
struct scsi_cmnd {TYPE_7__* request; TYPE_6__ SCp; } ;
struct TYPE_9__ {struct qedi_conn** conn_cid_tbl; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; TYPE_1__ cid_que; } ;
struct qedi_conn {int /*<<< orphan*/  iscsi_conn_id; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  active_cmd_count; } ;
struct qedi_cmd {int io_cmd_in_list; int /*<<< orphan*/  task_id; int /*<<< orphan*/  state; int /*<<< orphan*/  io_cmd; scalar_t__ sense_buffer; struct scsi_cmnd* scsi_cmd; } ;
struct iscsi_task {scalar_t__ hdr; struct qedi_cmd* dd_data; } ;
struct iscsi_session {int /*<<< orphan*/  back_lock; int /*<<< orphan*/  age; } ;
struct iscsi_scsi_rsp {scalar_t__ cmd_status; int /*<<< orphan*/  flags; void* residual_count; int /*<<< orphan*/  itt; int /*<<< orphan*/  response; void* exp_cmdsn; void* max_cmdsn; int /*<<< orphan*/  opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {scalar_t__ data; struct iscsi_session* session; } ;
struct TYPE_15__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQE_ERROR_BITMAP_UNDER_RUN_ERR ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int ISCSI_COMMON_HDR_DATA_SEG_LEN_MASK ; 
 int /*<<< orphan*/  ISCSI_FLAG_CMD_OVERFLOW ; 
 int /*<<< orphan*/  ISCSI_FLAG_CMD_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  QEDI_IO_TRACE_RSP ; 
 int /*<<< orphan*/  QEDI_LOG_INFO ; 
 int /*<<< orphan*/  QEDI_LOG_TID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  RESPONSE_RECEIVED ; 
 scalar_t__ SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,struct iscsi_hdr*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qedi_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ qedi_io_tracing ; 
 int /*<<< orphan*/  FUNC10 (struct qedi_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct qedi_ctx*,struct iscsi_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct qedi_ctx *qedi,
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

	iscsi_cid  = cqe->cqe_common.conn_id;
	qedi_conn = qedi->cid_que.conn_cid_tbl[iscsi_cid];

	cqe_data_in = &cqe->cqe_common.iscsi_hdr.data_in;
	cqe_err_bits =
		cqe->cqe_common.error_bitmap.error_bits.cqe_error_status_bits;

	FUNC14(&session->back_lock);
	/* get the scsi command */
	sc_cmd = cmd->scsi_cmd;

	if (!sc_cmd) {
		FUNC2(&qedi->dbg_ctx, "sc_cmd is NULL!\n");
		goto error;
	}

	if (!sc_cmd->SCp.ptr) {
		FUNC2(&qedi->dbg_ctx,
			  "SCp.ptr is NULL, returned in another context.\n");
		goto error;
	}

	if (!sc_cmd->request) {
		FUNC2(&qedi->dbg_ctx,
			  "sc_cmd->request is NULL, sc_cmd=%p.\n",
			  sc_cmd);
		goto error;
	}

	if (!sc_cmd->request->q) {
		FUNC2(&qedi->dbg_ctx,
			  "request->q is NULL so request is not valid, sc_cmd=%p.\n",
			  sc_cmd);
		goto error;
	}

	FUNC10(cmd);

	hdr = (struct iscsi_scsi_rsp *)task->hdr;
	hdr->opcode = cqe_data_in->opcode;
	hdr->max_cmdsn = FUNC5(cqe_data_in->max_cmd_sn);
	hdr->exp_cmdsn = FUNC5(cqe_data_in->exp_cmd_sn);
	hdr->itt = FUNC4(cqe->cqe_solicited.itid, conn->session->age);
	hdr->response = cqe_data_in->reserved1;
	hdr->cmd_status = cqe_data_in->status_rsvd;
	hdr->flags = cqe_data_in->flags;
	hdr->residual_count = FUNC5(cqe_data_in->residual_count);

	if (hdr->cmd_status == SAM_STAT_CHECK_CONDITION) {
		datalen = cqe_data_in->reserved2 &
			  ISCSI_COMMON_HDR_DATA_SEG_LEN_MASK;
		FUNC8((char *)conn->data, (char *)cmd->sense_buffer, datalen);
	}

	/* If f/w reports data underrun err then set residual to IO transfer
	 * length, set Underrun flag and clear Overrun flag explicitly
	 */
	if (FUNC17(cqe_err_bits &&
		     FUNC0(cqe_err_bits, CQE_ERROR_BITMAP_UNDER_RUN_ERR))) {
		FUNC1(&qedi->dbg_ctx, QEDI_LOG_INFO,
			  "Under flow itt=0x%x proto flags=0x%x tid=0x%x cid 0x%x fw resid 0x%x sc dlen 0x%x\n",
			  hdr->itt, cqe_data_in->flags, cmd->task_id,
			  qedi_conn->iscsi_conn_id, hdr->residual_count,
			  FUNC12(sc_cmd));
		hdr->residual_count = FUNC5(FUNC12(sc_cmd));
		hdr->flags |= ISCSI_FLAG_CMD_UNDERFLOW;
		hdr->flags &= (~ISCSI_FLAG_CMD_OVERFLOW);
	}

	FUNC13(&qedi_conn->list_lock);
	if (FUNC6(cmd->io_cmd_in_list)) {
		cmd->io_cmd_in_list = false;
		FUNC7(&cmd->io_cmd);
		qedi_conn->active_cmd_count--;
	}
	FUNC15(&qedi_conn->list_lock);

	FUNC1(&qedi->dbg_ctx, QEDI_LOG_TID,
		  "Freeing tid=0x%x for cid=0x%x\n",
		  cmd->task_id, qedi_conn->iscsi_conn_id);
	cmd->state = RESPONSE_RECEIVED;
	if (qedi_io_tracing)
		FUNC11(qedi, task, cmd->task_id, QEDI_IO_TRACE_RSP);

	FUNC9(qedi, cmd->task_id);
	FUNC3(conn, (struct iscsi_hdr *)hdr,
			     conn->data, datalen);
error:
	FUNC16(&session->back_lock);
}