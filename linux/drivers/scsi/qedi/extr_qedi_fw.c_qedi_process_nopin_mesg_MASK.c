#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  itid; } ;
struct iscsi_nop_in_hdr {int hdr_second_dword; int /*<<< orphan*/  ttt; int /*<<< orphan*/  stat_sn; int /*<<< orphan*/  exp_cmd_sn; int /*<<< orphan*/  max_cmd_sn; int /*<<< orphan*/  opcode; } ;
struct TYPE_7__ {struct iscsi_nop_in_hdr nop_in; } ;
struct TYPE_9__ {scalar_t__ cqe_type; TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {TYPE_5__ cqe_solicited; int /*<<< orphan*/  cqe_unsolicited; TYPE_4__ cqe_common; } ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct scsi_lun {int dummy; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  hba_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  resp_hdr; } ;
struct qedi_conn {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  active_cmd_count; int /*<<< orphan*/  iscsi_conn_id; TYPE_3__ gen_pdu; TYPE_1__* cls_conn; } ;
struct qedi_cmd {int io_cmd_in_list; int /*<<< orphan*/  task_id; int /*<<< orphan*/  io_cmd; int /*<<< orphan*/  state; } ;
struct iscsi_task {struct qedi_cmd* dd_data; } ;
struct iscsi_session {int /*<<< orphan*/  back_lock; int /*<<< orphan*/  age; } ;
struct iscsi_nopin {int /*<<< orphan*/  lun; int /*<<< orphan*/  itt; int /*<<< orphan*/  flags; void* ttt; void* statsn; void* exp_cmdsn; void* max_cmdsn; int /*<<< orphan*/  opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct TYPE_6__ {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 scalar_t__ ISCSI_CQE_TYPE_UNSOLICITED ; 
 int /*<<< orphan*/  ISCSI_FLAG_CMD_FINAL ; 
 int ISCSI_NOP_IN_HDR_DATA_SEG_LEN_MASK ; 
 int QEDI_BDQ_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QEDI_LOG_TID ; 
 int /*<<< orphan*/  RESERVED_ITT ; 
 int /*<<< orphan*/  RESPONSE_RECEIVED ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_nopin*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qedi_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qedi_ctx*,int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct qedi_ctx *qedi,
				   union iscsi_cqe *cqe,
				   struct iscsi_task *task,
				   struct qedi_conn *qedi_conn, u16 que_idx)
{
	struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
	struct iscsi_session *session = conn->session;
	struct iscsi_nop_in_hdr *cqe_nop_in;
	struct iscsi_nopin *hdr;
	struct qedi_cmd *cmd;
	int tgt_async_nop = 0;
	u32 lun[2];
	u32 pdu_len, num_bdqs;
	char bdq_data[QEDI_BDQ_BUF_SIZE];
	unsigned long flags;

	FUNC11(&session->back_lock);
	cqe_nop_in = &cqe->cqe_common.iscsi_hdr.nop_in;

	pdu_len = cqe_nop_in->hdr_second_dword &
		  ISCSI_NOP_IN_HDR_DATA_SEG_LEN_MASK;
	num_bdqs = pdu_len / QEDI_BDQ_BUF_SIZE;

	hdr = (struct iscsi_nopin *)&qedi_conn->gen_pdu.resp_hdr;
	FUNC7(hdr, 0, sizeof(struct iscsi_hdr));
	hdr->opcode = cqe_nop_in->opcode;
	hdr->max_cmdsn = FUNC3(cqe_nop_in->max_cmd_sn);
	hdr->exp_cmdsn = FUNC3(cqe_nop_in->exp_cmd_sn);
	hdr->statsn = FUNC3(cqe_nop_in->stat_sn);
	hdr->ttt = FUNC3(cqe_nop_in->ttt);

	if (cqe->cqe_common.cqe_type == ISCSI_CQE_TYPE_UNSOLICITED) {
		FUNC12(&qedi->hba_lock, flags);
		FUNC9(qedi, &cqe->cqe_unsolicited,
					  pdu_len, num_bdqs, bdq_data);
		hdr->itt = RESERVED_ITT;
		tgt_async_nop = 1;
		FUNC15(&qedi->hba_lock, flags);
		goto done;
	}

	/* Response to one of our nop-outs */
	if (task) {
		cmd = task->dd_data;
		hdr->flags = ISCSI_FLAG_CMD_FINAL;
		hdr->itt = FUNC2(cqe->cqe_solicited.itid,
				     conn->session->age);
		lun[0] = 0xffffffff;
		lun[1] = 0xffffffff;
		FUNC6(&hdr->lun, lun, sizeof(struct scsi_lun));
		FUNC0(&qedi->dbg_ctx, QEDI_LOG_TID,
			  "Freeing tid=0x%x for cid=0x%x\n",
			  cmd->task_id, qedi_conn->iscsi_conn_id);
		cmd->state = RESPONSE_RECEIVED;
		FUNC10(&qedi_conn->list_lock);
		if (FUNC4(cmd->io_cmd_in_list)) {
			cmd->io_cmd_in_list = false;
			FUNC5(&cmd->io_cmd);
			qedi_conn->active_cmd_count--;
		}

		FUNC13(&qedi_conn->list_lock);
		FUNC8(qedi, cmd->task_id);
	}

done:
	FUNC1(conn, (struct iscsi_hdr *)hdr, bdq_data, pdu_len);

	FUNC14(&session->back_lock);
	return tgt_async_nop;
}