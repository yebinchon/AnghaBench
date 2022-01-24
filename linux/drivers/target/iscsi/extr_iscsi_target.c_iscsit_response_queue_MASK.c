#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iscsi_conn {int /*<<< orphan*/  check_immediate_queue; int /*<<< orphan*/  cid; int /*<<< orphan*/  sess; } ;
struct iscsi_cmd {int i_state; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  iscsi_opcode; int /*<<< orphan*/  istate_lock; } ;

/* Variables and functions */
 int ECONNRESET ; 
#define  ISTATE_SEND_ASYNCMSG 136 
#define  ISTATE_SEND_DATAIN 135 
#define  ISTATE_SEND_LOGOUTRSP 134 
#define  ISTATE_SEND_NOPIN 133 
#define  ISTATE_SEND_REJECT 132 
#define  ISTATE_SEND_STATUS 131 
#define  ISTATE_SEND_STATUS_RECOVERY 130 
#define  ISTATE_SEND_TASKMGTRSP 129 
#define  ISTATE_SEND_TEXTRSP 128 
 void* ISTATE_SENT_STATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC3 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC4 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC5 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC6 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC7 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC8 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC9 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC10 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC11 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
	int ret;

check_rsp_state:
	switch (state) {
	case ISTATE_SEND_DATAIN:
		ret = FUNC4(cmd, conn);
		if (ret < 0)
			goto err;
		else if (!ret)
			/* more drs */
			goto check_rsp_state;
		else if (ret == 1) {
			/* all done */
			FUNC13(&cmd->istate_lock);
			cmd->i_state = ISTATE_SENT_STATUS;
			FUNC14(&cmd->istate_lock);

			if (FUNC0(&conn->check_immediate_queue))
				return 1;

			return 0;
		} else if (ret == 2) {
			/* Still must send status,
			   SCF_TRANSPORT_TASK_SENSE was set */
			FUNC13(&cmd->istate_lock);
			cmd->i_state = ISTATE_SEND_STATUS;
			FUNC14(&cmd->istate_lock);
			state = ISTATE_SEND_STATUS;
			goto check_rsp_state;
		}

		break;
	case ISTATE_SEND_STATUS:
	case ISTATE_SEND_STATUS_RECOVERY:
		ret = FUNC8(cmd, conn);
		break;
	case ISTATE_SEND_LOGOUTRSP:
		ret = FUNC5(cmd, conn);
		break;
	case ISTATE_SEND_ASYNCMSG:
		ret = FUNC3(
			cmd, conn);
		break;
	case ISTATE_SEND_NOPIN:
		ret = FUNC6(cmd, conn);
		break;
	case ISTATE_SEND_REJECT:
		ret = FUNC7(cmd, conn);
		break;
	case ISTATE_SEND_TASKMGTRSP:
		ret = FUNC9(cmd, conn);
		if (ret != 0)
			break;
		ret = FUNC11(cmd, conn);
		if (ret != 0)
			FUNC1(conn->sess);
		break;
	case ISTATE_SEND_TEXTRSP:
		ret = FUNC10(cmd, conn);
		break;
	default:
		FUNC12("Unknown Opcode: 0x%02x ITT:"
		       " 0x%08x, i_state: %d on CID: %hu\n",
		       cmd->iscsi_opcode, cmd->init_task_tag,
		       state, conn->cid);
		goto err;
	}
	if (ret < 0)
		goto err;

	switch (state) {
	case ISTATE_SEND_LOGOUTRSP:
		if (!FUNC2(cmd, conn))
			return -ECONNRESET;
		/* fall through */
	case ISTATE_SEND_STATUS:
	case ISTATE_SEND_ASYNCMSG:
	case ISTATE_SEND_NOPIN:
	case ISTATE_SEND_STATUS_RECOVERY:
	case ISTATE_SEND_TEXTRSP:
	case ISTATE_SEND_TASKMGTRSP:
	case ISTATE_SEND_REJECT:
		FUNC13(&cmd->istate_lock);
		cmd->i_state = ISTATE_SENT_STATUS;
		FUNC14(&cmd->istate_lock);
		break;
	default:
		FUNC12("Unknown Opcode: 0x%02x ITT:"
		       " 0x%08x, i_state: %d on CID: %hu\n",
		       cmd->iscsi_opcode, cmd->init_task_tag,
		       cmd->i_state, conn->cid);
		goto err;
	}

	if (FUNC0(&conn->check_immediate_queue))
		return 1;

	return 0;

err:
	return -1;
}