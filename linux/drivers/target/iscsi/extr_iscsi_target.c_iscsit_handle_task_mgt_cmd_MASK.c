#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct se_tmr_req {scalar_t__ response; int call_transport; } ;
struct iscsi_tmr_req {struct se_tmr_req* se_tmr_req; } ;
struct iscsi_tm {scalar_t__ flags; scalar_t__ rtt; int opcode; int /*<<< orphan*/  exp_statsn; int /*<<< orphan*/  cmdsn; int /*<<< orphan*/  lun; int /*<<< orphan*/  itt; int /*<<< orphan*/  refcmdsn; } ;
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  conn_cmd_list; TYPE_1__* sess; int /*<<< orphan*/  cid; } ;
struct TYPE_9__ {struct se_tmr_req* se_tmr_req; } ;
struct iscsi_cmd {int immediate_cmd; int targ_xfer_tag; TYPE_2__ se_cmd; int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_conn_node; struct iscsi_tmr_req* tmr_req; scalar_t__ exp_stat_sn; scalar_t__ cmd_sn; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  iscsi_opcode; scalar_t__ sense_buffer; int /*<<< orphan*/  data_direction; } ;
struct TYPE_8__ {int /*<<< orphan*/  se_sess; } ;

/* Variables and functions */
 int CMDSN_ERROR_CANNOT_RECOVER ; 
 int CMDSN_HIGHER_THAN_EXP ; 
 int CMDSN_LOWER_THAN_EXP ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ ISCSI_FLAG_CMD_FINAL ; 
 int ISCSI_OP_IMMEDIATE ; 
 int /*<<< orphan*/  ISCSI_OP_SCSI_TMFUNC ; 
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_INVALID ; 
 int /*<<< orphan*/  ISCSI_REASON_BOOKMARK_NO_RESOURCES ; 
 int /*<<< orphan*/  ISCSI_REASON_PROTOCOL_ERROR ; 
 scalar_t__ ISCSI_RESERVED_TAG ; 
 void* ISCSI_TMF_RSP_AUTH_FAILED ; 
 scalar_t__ ISCSI_TMF_RSP_COMPLETE ; 
 scalar_t__ ISCSI_TMF_RSP_NOT_SUPPORTED ; 
 scalar_t__ ISCSI_TMF_RSP_NO_LUN ; 
#define  ISCSI_TM_FUNC_ABORT_TASK 135 
#define  ISCSI_TM_FUNC_ABORT_TASK_SET 134 
#define  ISCSI_TM_FUNC_CLEAR_ACA 133 
#define  ISCSI_TM_FUNC_CLEAR_TASK_SET 132 
#define  ISCSI_TM_FUNC_LOGICAL_UNIT_RESET 131 
#define  ISCSI_TM_FUNC_TARGET_COLD_RESET 130 
#define  ISCSI_TM_FUNC_TARGET_WARM_RESET 129 
#define  ISCSI_TM_FUNC_TASK_REASSIGN 128 
 int /*<<< orphan*/  ISTATE_SEND_TASKMGTRSP ; 
 scalar_t__ RESERVED_ITT ; 
 int /*<<< orphan*/  TCM_SIMPLE_TAG ; 
 scalar_t__ TMR_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,struct iscsi_tmr_req*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  iscsi_ops ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iscsi_cmd*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_tmr_req*,struct iscsi_conn*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct iscsi_cmd*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_conn*,struct iscsi_tmr_req*,unsigned char*) ; 
 scalar_t__ FUNC11 (struct iscsi_cmd*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (struct iscsi_conn*,struct iscsi_tmr_req*,unsigned char*) ; 
 struct iscsi_tmr_req* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC24 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC25(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
			   unsigned char *buf)
{
	struct se_tmr_req *se_tmr;
	struct iscsi_tmr_req *tmr_req;
	struct iscsi_tm *hdr;
	int out_of_order_cmdsn = 0, ret;
	u8 function, tcm_function = TMR_UNKNOWN;

	hdr			= (struct iscsi_tm *) buf;
	hdr->flags &= ~ISCSI_FLAG_CMD_FINAL;
	function = hdr->flags;

	FUNC15("Got Task Management Request ITT: 0x%08x, CmdSN:"
		" 0x%08x, Function: 0x%02x, RefTaskTag: 0x%08x, RefCmdSN:"
		" 0x%08x, CID: %hu\n", hdr->itt, hdr->cmdsn, function,
		hdr->rtt, hdr->refcmdsn, conn->cid);

	if ((function != ISCSI_TM_FUNC_ABORT_TASK) &&
	    ((function != ISCSI_TM_FUNC_TASK_REASSIGN) &&
	     hdr->rtt != RESERVED_ITT)) {
		FUNC16("RefTaskTag should be set to 0xFFFFFFFF.\n");
		hdr->rtt = RESERVED_ITT;
	}

	if ((function == ISCSI_TM_FUNC_TASK_REASSIGN) &&
			!(hdr->opcode & ISCSI_OP_IMMEDIATE)) {
		FUNC16("Task Management Request TASK_REASSIGN not"
			" issued as immediate command, bad iSCSI Initiator"
				"implementation\n");
		return FUNC5(cmd,
					     ISCSI_REASON_PROTOCOL_ERROR, buf);
	}
	if ((function != ISCSI_TM_FUNC_ABORT_TASK) &&
	    FUNC0(hdr->refcmdsn) != ISCSI_RESERVED_TAG)
		hdr->refcmdsn = FUNC2(ISCSI_RESERVED_TAG);

	cmd->data_direction = DMA_NONE;
	cmd->tmr_req = FUNC13(sizeof(*cmd->tmr_req), GFP_KERNEL);
	if (!cmd->tmr_req) {
		return FUNC5(cmd,
					     ISCSI_REASON_BOOKMARK_NO_RESOURCES,
					     buf);
	}

	FUNC23(&cmd->se_cmd, &iscsi_ops,
			      conn->sess->se_sess, 0, DMA_NONE,
			      TCM_SIMPLE_TAG, cmd->sense_buffer + 2);

	FUNC20(&cmd->se_cmd, true);

	/*
	 * TASK_REASSIGN for ERL=2 / connection stays inside of
	 * LIO-Target $FABRIC_MOD
	 */
	if (function != ISCSI_TM_FUNC_TASK_REASSIGN) {
		tcm_function = FUNC7(function);
		if (tcm_function == TMR_UNKNOWN) {
			FUNC16("Unknown iSCSI TMR Function:"
			       " 0x%02x\n", function);
			return FUNC5(cmd,
				ISCSI_REASON_BOOKMARK_NO_RESOURCES, buf);
		}
	}
	ret = FUNC1(&cmd->se_cmd, cmd->tmr_req, tcm_function,
				 GFP_KERNEL);
	if (ret < 0)
		return FUNC5(cmd,
				ISCSI_REASON_BOOKMARK_NO_RESOURCES, buf);

	cmd->tmr_req->se_tmr_req = cmd->se_cmd.se_tmr_req;

	cmd->iscsi_opcode	= ISCSI_OP_SCSI_TMFUNC;
	cmd->i_state		= ISTATE_SEND_TASKMGTRSP;
	cmd->immediate_cmd	= ((hdr->opcode & ISCSI_OP_IMMEDIATE) ? 1 : 0);
	cmd->init_task_tag	= hdr->itt;
	cmd->targ_xfer_tag	= 0xFFFFFFFF;
	cmd->cmd_sn		= FUNC0(hdr->cmdsn);
	cmd->exp_stat_sn	= FUNC0(hdr->exp_statsn);
	se_tmr			= cmd->se_cmd.se_tmr_req;
	tmr_req			= cmd->tmr_req;
	/*
	 * Locate the struct se_lun for all TMRs not related to ERL=2 TASK_REASSIGN
	 */
	if (function != ISCSI_TM_FUNC_TASK_REASSIGN) {
		ret = FUNC24(&cmd->se_cmd,
					       FUNC17(&hdr->lun));
		if (ret < 0) {
			se_tmr->response = ISCSI_TMF_RSP_NO_LUN;
			goto attach;
		}
	}

	switch (function) {
	case ISCSI_TM_FUNC_ABORT_TASK:
		se_tmr->response = FUNC9(cmd, buf);
		if (se_tmr->response)
			goto attach;
		break;
	case ISCSI_TM_FUNC_ABORT_TASK_SET:
	case ISCSI_TM_FUNC_CLEAR_ACA:
	case ISCSI_TM_FUNC_CLEAR_TASK_SET:
	case ISCSI_TM_FUNC_LOGICAL_UNIT_RESET:
		break;
	case ISCSI_TM_FUNC_TARGET_WARM_RESET:
		if (FUNC12(conn, tmr_req, buf) < 0) {
			se_tmr->response = ISCSI_TMF_RSP_AUTH_FAILED;
			goto attach;
		}
		break;
	case ISCSI_TM_FUNC_TARGET_COLD_RESET:
		if (FUNC10(conn, tmr_req, buf) < 0) {
			se_tmr->response = ISCSI_TMF_RSP_AUTH_FAILED;
			goto attach;
		}
		break;
	case ISCSI_TM_FUNC_TASK_REASSIGN:
		se_tmr->response = FUNC11(cmd, buf);
		/*
		 * Perform sanity checks on the ExpDataSN only if the
		 * TASK_REASSIGN was successful.
		 */
		if (se_tmr->response)
			break;

		if (FUNC6(tmr_req, conn) < 0)
			return FUNC5(cmd,
					ISCSI_REASON_BOOKMARK_INVALID, buf);
		break;
	default:
		FUNC16("Unknown TMR function: 0x%02x, protocol"
			" error.\n", function);
		se_tmr->response = ISCSI_TMF_RSP_NOT_SUPPORTED;
		goto attach;
	}

	if ((function != ISCSI_TM_FUNC_TASK_REASSIGN) &&
	    (se_tmr->response == ISCSI_TMF_RSP_COMPLETE))
		se_tmr->call_transport = 1;
attach:
	FUNC18(&conn->cmd_lock);
	FUNC14(&cmd->i_conn_node, &conn->conn_cmd_list);
	FUNC19(&conn->cmd_lock);

	if (!(hdr->opcode & ISCSI_OP_IMMEDIATE)) {
		int cmdsn_ret = FUNC8(conn, cmd, buf, hdr->cmdsn);
		if (cmdsn_ret == CMDSN_HIGHER_THAN_EXP) {
			out_of_order_cmdsn = 1;
		} else if (cmdsn_ret == CMDSN_LOWER_THAN_EXP) {
			FUNC21(&cmd->se_cmd);
			return 0;
		} else if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER) {
			return -1;
		}
	}
	FUNC3(conn, FUNC0(hdr->exp_statsn));

	if (out_of_order_cmdsn || !(hdr->opcode & ISCSI_OP_IMMEDIATE))
		return 0;
	/*
	 * Found the referenced task, send to transport for processing.
	 */
	if (se_tmr->call_transport)
		return FUNC22(&cmd->se_cmd);

	/*
	 * Could not find the referenced LUN, task, or Task Management
	 * command not authorized or supported.  Change state and
	 * let the tx_thread send the response.
	 *
	 * For connection recovery, this is also the default action for
	 * TMR TASK_REASSIGN.
	 */
	FUNC4(cmd, conn, cmd->i_state);
	FUNC21(&cmd->se_cmd);
	return 0;
}