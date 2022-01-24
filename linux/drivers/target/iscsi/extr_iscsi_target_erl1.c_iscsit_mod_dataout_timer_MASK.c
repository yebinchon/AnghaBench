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
struct iscsi_session {int dummy; } ;
struct iscsi_node_attrib {int dataout_timeout; } ;
struct iscsi_conn {struct iscsi_session* sess; } ;
struct iscsi_cmd {int dataout_timer_flags; int /*<<< orphan*/  dataout_timeout_lock; int /*<<< orphan*/  init_task_tag; int /*<<< orphan*/  dataout_timer; struct iscsi_conn* conn; } ;

/* Variables and functions */
 int HZ ; 
 int ISCSI_TF_RUNNING ; 
 scalar_t__ FUNC0 () ; 
 struct iscsi_node_attrib* FUNC1 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct iscsi_cmd *cmd)
{
	struct iscsi_conn *conn = cmd->conn;
	struct iscsi_session *sess = conn->sess;
	struct iscsi_node_attrib *na = FUNC1(sess);

	FUNC4(&cmd->dataout_timeout_lock);
	if (!(cmd->dataout_timer_flags & ISCSI_TF_RUNNING)) {
		FUNC5(&cmd->dataout_timeout_lock);
		return;
	}

	FUNC2(&cmd->dataout_timer,
		(FUNC0() + na->dataout_timeout * HZ));
	FUNC3("Updated DataOUT timer for ITT: 0x%08x",
			cmd->init_task_tag);
	FUNC5(&cmd->dataout_timeout_lock);
}