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
struct iscsi_conn {int /*<<< orphan*/  cid; int /*<<< orphan*/  cmd_lock; } ;
struct iscsi_cmd {int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  iscsi_opcode; int /*<<< orphan*/  i_conn_node; } ;

/* Variables and functions */
#define  ISTATE_REMOVE 131 
#define  ISTATE_SEND_NOPIN_NO_RESPONSE 130 
#define  ISTATE_SEND_NOPIN_WANT_RESPONSE 129 
#define  ISTATE_SEND_R2T 128 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*) ; 
 int FUNC2 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC3 (struct iscsi_cmd*,struct iscsi_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
	int ret;

	switch (state) {
	case ISTATE_SEND_R2T:
		ret = FUNC2(cmd, conn);
		if (ret < 0)
			goto err;
		break;
	case ISTATE_REMOVE:
		FUNC6(&conn->cmd_lock);
		FUNC4(&cmd->i_conn_node);
		FUNC7(&conn->cmd_lock);

		FUNC0(cmd, false);
		break;
	case ISTATE_SEND_NOPIN_WANT_RESPONSE:
		FUNC1(conn);
		ret = FUNC3(cmd, conn, 1);
		if (ret < 0)
			goto err;
		break;
	case ISTATE_SEND_NOPIN_NO_RESPONSE:
		ret = FUNC3(cmd, conn, 0);
		if (ret < 0)
			goto err;
		break;
	default:
		FUNC5("Unknown Opcode: 0x%02x ITT:"
		       " 0x%08x, i_state: %d on CID: %hu\n",
		       cmd->iscsi_opcode, cmd->init_task_tag, state,
		       conn->cid);
		goto err;
	}

	return 0;

err:
	return -1;
}