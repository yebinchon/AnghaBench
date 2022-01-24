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
struct se_cmd {int transport_state; TYPE_2__* se_tmr_req; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int cmd_flags; int iscsi_opcode; int logout_reason; int /*<<< orphan*/  istate_lock; struct iscsi_conn* conn; struct se_cmd se_cmd; int /*<<< orphan*/  i_state; int /*<<< orphan*/  data_direction; int /*<<< orphan*/  immediate_data; int /*<<< orphan*/  sense_reason; } ;
struct TYPE_4__ {int /*<<< orphan*/  response; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* iscsit_get_dataout ) (struct iscsi_conn*,struct iscsi_cmd*,int) ;} ;

/* Variables and functions */
 int CMD_T_ABORTED ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ICF_GOT_LAST_DATAOUT ; 
 int ICF_NON_IMMEDIATE_UNSOLICITED_DATA ; 
 int ICF_OOO_CMDSN ; 
#define  ISCSI_LOGOUT_REASON_CLOSE_CONNECTION 135 
#define  ISCSI_LOGOUT_REASON_CLOSE_SESSION 134 
#define  ISCSI_LOGOUT_REASON_RECOVERY 133 
#define  ISCSI_OP_LOGOUT 132 
#define  ISCSI_OP_NOOP_OUT 131 
#define  ISCSI_OP_SCSI_CMD 130 
#define  ISCSI_OP_SCSI_TMFUNC 129 
#define  ISCSI_OP_TEXT 128 
 int /*<<< orphan*/  ISTATE_SEND_STATUS ; 
 int /*<<< orphan*/  TCM_RESERVATION_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC2 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC3 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_conn*,struct iscsi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct se_cmd*) ; 
 int FUNC11 (struct se_cmd*) ; 
 int FUNC12 (struct se_cmd*) ; 
 int FUNC13 (struct se_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct iscsi_cmd *cmd, int ooo)
{
	struct se_cmd *se_cmd = &cmd->se_cmd;
	struct iscsi_conn *conn = cmd->conn;
	int lr = 0;

	FUNC7(&cmd->istate_lock);
	if (ooo)
		cmd->cmd_flags &= ~ICF_OOO_CMDSN;

	switch (cmd->iscsi_opcode) {
	case ISCSI_OP_SCSI_CMD:
		/*
		 * Go ahead and send the CHECK_CONDITION status for
		 * any SCSI CDB exceptions that may have occurred.
		 */
		if (cmd->sense_reason) {
			if (cmd->sense_reason == TCM_RESERVATION_CONFLICT) {
				cmd->i_state = ISTATE_SEND_STATUS;
				FUNC8(&cmd->istate_lock);
				FUNC0(cmd, cmd->conn,
						cmd->i_state);
				return 0;
			}
			FUNC8(&cmd->istate_lock);
			if (cmd->se_cmd.transport_state & CMD_T_ABORTED)
				return 0;
			return FUNC13(se_cmd,
					cmd->sense_reason, 0);
		}
		/*
		 * Special case for delayed CmdSN with Immediate
		 * Data and/or Unsolicited Data Out attached.
		 */
		if (cmd->immediate_data) {
			if (cmd->cmd_flags & ICF_GOT_LAST_DATAOUT) {
				FUNC8(&cmd->istate_lock);
				FUNC10(&cmd->se_cmd);
				return 0;
			}
			FUNC8(&cmd->istate_lock);

			if (!(cmd->cmd_flags &
					ICF_NON_IMMEDIATE_UNSOLICITED_DATA)) {
				if (cmd->se_cmd.transport_state & CMD_T_ABORTED)
					return 0;

				FUNC4(cmd);
				conn->conn_transport->iscsit_get_dataout(conn, cmd, false);
			}
			return 0;
		}
		/*
		 * The default handler.
		 */
		FUNC8(&cmd->istate_lock);

		if ((cmd->data_direction == DMA_TO_DEVICE) &&
		    !(cmd->cmd_flags & ICF_NON_IMMEDIATE_UNSOLICITED_DATA)) {
			if (cmd->se_cmd.transport_state & CMD_T_ABORTED)
				return 0;

			FUNC5(cmd);
		}
		return FUNC12(&cmd->se_cmd);

	case ISCSI_OP_NOOP_OUT:
	case ISCSI_OP_TEXT:
		FUNC8(&cmd->istate_lock);
		FUNC0(cmd, cmd->conn, cmd->i_state);
		break;
	case ISCSI_OP_SCSI_TMFUNC:
		if (cmd->se_cmd.se_tmr_req->response) {
			FUNC8(&cmd->istate_lock);
			FUNC0(cmd, cmd->conn,
					cmd->i_state);
			return 0;
		}
		FUNC8(&cmd->istate_lock);

		return FUNC11(&cmd->se_cmd);
	case ISCSI_OP_LOGOUT:
		FUNC8(&cmd->istate_lock);
		switch (cmd->logout_reason) {
		case ISCSI_LOGOUT_REASON_CLOSE_SESSION:
			lr = FUNC2(cmd, cmd->conn);
			break;
		case ISCSI_LOGOUT_REASON_CLOSE_CONNECTION:
			lr = FUNC1(cmd, cmd->conn);
			break;
		case ISCSI_LOGOUT_REASON_RECOVERY:
			lr = FUNC3(cmd, cmd->conn);
			break;
		default:
			FUNC6("Unknown iSCSI Logout Request Code:"
				" 0x%02x\n", cmd->logout_reason);
			return -1;
		}

		return lr;
	default:
		FUNC8(&cmd->istate_lock);
		FUNC6("Cannot perform out of order execution for"
		" unknown iSCSI Opcode: 0x%02x\n", cmd->iscsi_opcode);
		return -1;
	}

	return 0;
}