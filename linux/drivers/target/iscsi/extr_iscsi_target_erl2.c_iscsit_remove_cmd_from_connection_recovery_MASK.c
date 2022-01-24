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
struct iscsi_conn_recovery {int cmd_count; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_conn_node; struct iscsi_conn_recovery* cr; int /*<<< orphan*/  init_task_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(
	struct iscsi_cmd *cmd,
	struct iscsi_session *sess)
{
	struct iscsi_conn_recovery *cr;

	if (!cmd->cr) {
		FUNC2("struct iscsi_conn_recovery pointer for ITT: 0x%08x"
			" is NULL!\n", cmd->init_task_tag);
		FUNC0();
	}
	cr = cmd->cr;

	FUNC1(&cmd->i_conn_node);
	return --cr->cmd_count;
}