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
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; } ;
struct TYPE_2__ {int transport_state; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_conn_node; TYPE_1__ se_cmd; } ;

/* Variables and functions */
 int CMD_T_FABRIC_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
	FUNC3(&conn->cmd_lock);
	if (!FUNC2(&cmd->i_conn_node) &&
	    !(cmd->se_cmd.transport_state & CMD_T_FABRIC_STOP))
		FUNC1(&cmd->i_conn_node);
	FUNC4(&conn->cmd_lock);

	FUNC0(cmd, true);
}