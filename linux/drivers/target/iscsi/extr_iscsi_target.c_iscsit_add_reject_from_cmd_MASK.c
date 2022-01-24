#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  conn_cmd_list; } ;
struct TYPE_2__ {int /*<<< orphan*/ * se_tfo; } ;
struct iscsi_cmd {TYPE_1__ se_cmd; int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_conn_node; int /*<<< orphan*/  buf_ptr; int /*<<< orphan*/  reject_reason; int /*<<< orphan*/  iscsi_opcode; struct iscsi_conn* conn; int /*<<< orphan*/  init_task_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ISCSI_HDR_LEN ; 
 int /*<<< orphan*/  ISCSI_OP_REJECT ; 
 int /*<<< orphan*/  ISTATE_SEND_REJECT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(
	struct iscsi_cmd *cmd,
	u8 reason,
	bool add_to_conn,
	unsigned char *buf)
{
	struct iscsi_conn *conn;
	const bool do_put = cmd->se_cmd.se_tfo != NULL;

	if (!cmd->conn) {
		FUNC5("cmd->conn is NULL for ITT: 0x%08x\n",
				cmd->init_task_tag);
		return -1;
	}
	conn = cmd->conn;

	cmd->iscsi_opcode = ISCSI_OP_REJECT;
	cmd->reject_reason = reason;

	cmd->buf_ptr = FUNC2(buf, ISCSI_HDR_LEN, GFP_KERNEL);
	if (!cmd->buf_ptr) {
		FUNC5("Unable to allocate memory for cmd->buf_ptr\n");
		FUNC1(cmd, false);
		return -1;
	}

	if (add_to_conn) {
		FUNC6(&conn->cmd_lock);
		FUNC3(&cmd->i_conn_node, &conn->conn_cmd_list);
		FUNC7(&conn->cmd_lock);
	}

	cmd->i_state = ISTATE_SEND_REJECT;
	FUNC0(cmd, conn, cmd->i_state);
	/*
	 * Perform the kref_put now if se_cmd has already been setup by
	 * scsit_setup_scsi_cmd()
	 */
	if (do_put) {
		FUNC4("iscsi reject: calling target_put_sess_cmd >>>>>>\n");
		FUNC8(&cmd->se_cmd);
	}
	return -1;
}