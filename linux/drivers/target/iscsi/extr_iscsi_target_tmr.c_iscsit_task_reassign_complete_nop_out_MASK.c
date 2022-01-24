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
struct iscsi_tmr_req {struct iscsi_cmd* ref_cmd; } ;
struct iscsi_conn_recovery {int dummy; } ;
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  conn_cmd_list; int /*<<< orphan*/  sess; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_conn_node; scalar_t__ exp_stat_sn; scalar_t__ stat_sn; struct iscsi_conn_recovery* cr; int /*<<< orphan*/  init_task_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISTATE_SEND_NOPIN ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,struct iscsi_conn_recovery*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
	struct iscsi_tmr_req *tmr_req,
	struct iscsi_conn *conn)
{
	struct iscsi_cmd *cmd = tmr_req->ref_cmd;
	struct iscsi_conn_recovery *cr;

	if (!cmd->cr) {
		FUNC3("struct iscsi_conn_recovery pointer for ITT: 0x%08x"
			" is NULL!\n", cmd->init_task_tag);
		return -1;
	}
	cr = cmd->cr;

	/*
	 * Reset the StatSN so a new one for this commands new connection
	 * will be assigned.
	 * Reset the ExpStatSN as well so we may receive Status SNACKs.
	 */
	cmd->stat_sn = cmd->exp_stat_sn = 0;

	FUNC1(cmd, cr, conn->sess);

	FUNC4(&conn->cmd_lock);
	FUNC2(&cmd->i_conn_node, &conn->conn_cmd_list);
	FUNC5(&conn->cmd_lock);

	cmd->i_state = ISTATE_SEND_NOPIN;
	FUNC0(cmd, conn, cmd->i_state);
	return 0;
}