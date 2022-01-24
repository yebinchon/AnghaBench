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
struct se_session {int /*<<< orphan*/  sess_cmd_lock; } ;
struct se_cmd {int transport_state; int /*<<< orphan*/  cmd_kref; int /*<<< orphan*/  t_state_lock; struct se_session* se_sess; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int CMD_T_ABORTED ; 
 int CMD_T_COMPLETE ; 
 int CMD_T_FABRIC_STOP ; 
 int CMD_T_TAS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct se_cmd *se_cmd,
				    struct se_session *tmr_sess, int tas)
{
	struct se_session *sess = se_cmd->se_sess;

	FUNC1(&sess->sess_cmd_lock);
	FUNC0(!FUNC2());
	/*
	 * If command already reached CMD_T_COMPLETE state within
	 * target_complete_cmd() or CMD_T_FABRIC_STOP due to shutdown,
	 * this se_cmd has been passed to fabric driver and will
	 * not be aborted.
	 *
	 * Otherwise, obtain a local se_cmd->cmd_kref now for TMR
	 * ABORT_TASK + LUN_RESET for CMD_T_ABORTED processing as
	 * long as se_cmd->cmd_kref is still active unless zero.
	 */
	FUNC5(&se_cmd->t_state_lock);
	if (se_cmd->transport_state & (CMD_T_COMPLETE | CMD_T_FABRIC_STOP)) {
		FUNC4("Attempted to abort io tag: %llu already complete or"
			" fabric stop, skipping\n", se_cmd->tag);
		FUNC6(&se_cmd->t_state_lock);
		return false;
	}
	se_cmd->transport_state |= CMD_T_ABORTED;

	if ((tmr_sess != se_cmd->se_sess) && tas)
		se_cmd->transport_state |= CMD_T_TAS;

	FUNC6(&se_cmd->t_state_lock);

	return FUNC3(&se_cmd->cmd_kref);
}