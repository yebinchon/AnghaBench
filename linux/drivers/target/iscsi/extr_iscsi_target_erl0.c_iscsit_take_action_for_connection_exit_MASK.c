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
struct iscsi_conn {scalar_t__ conn_state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  connection_exit; } ;

/* Variables and functions */
 scalar_t__ TARG_CONN_STATE_CLEANUP_WAIT ; 
 scalar_t__ TARG_CONN_STATE_IN_LOGOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct iscsi_conn *conn, bool *conn_freed)
{
	*conn_freed = false;

	FUNC5(&conn->state_lock);
	if (FUNC0(&conn->connection_exit)) {
		FUNC6(&conn->state_lock);
		return;
	}
	FUNC1(&conn->connection_exit, 1);

	if (conn->conn_state == TARG_CONN_STATE_IN_LOGOUT) {
		FUNC6(&conn->state_lock);
		FUNC2(conn);
		*conn_freed = true;
		return;
	}

	if (conn->conn_state == TARG_CONN_STATE_CLEANUP_WAIT) {
		FUNC6(&conn->state_lock);
		return;
	}

	FUNC4("Moving to TARG_CONN_STATE_CLEANUP_WAIT.\n");
	conn->conn_state = TARG_CONN_STATE_CLEANUP_WAIT;
	FUNC6(&conn->state_lock);

	FUNC3(conn);
	*conn_freed = true;
}