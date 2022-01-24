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
struct iscsi_conn {int /*<<< orphan*/  conn_post_wait_comp; int /*<<< orphan*/  conn_wait_comp; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  sleep_on_conn_wait_comp; int /*<<< orphan*/  connection_reinstatement; scalar_t__ rx_thread; scalar_t__ rx_thread_active; scalar_t__ tx_thread; scalar_t__ tx_thread_active; int /*<<< orphan*/  transport_failed; int /*<<< orphan*/  connection_exit; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct iscsi_conn *conn, int sleep)
{
	FUNC4(&conn->state_lock);
	if (FUNC0(&conn->connection_exit)) {
		FUNC5(&conn->state_lock);
		return;
	}

	if (FUNC0(&conn->transport_failed)) {
		FUNC5(&conn->state_lock);
		return;
	}

	if (FUNC0(&conn->connection_reinstatement)) {
		FUNC5(&conn->state_lock);
		return;
	}

	if (conn->tx_thread && conn->tx_thread_active)
		FUNC3(SIGINT, conn->tx_thread, 1);
	if (conn->rx_thread && conn->rx_thread_active)
		FUNC3(SIGINT, conn->rx_thread, 1);

	FUNC1(&conn->connection_reinstatement, 1);
	if (!sleep) {
		FUNC5(&conn->state_lock);
		return;
	}

	FUNC1(&conn->sleep_on_conn_wait_comp, 1);
	FUNC5(&conn->state_lock);

	FUNC6(&conn->conn_wait_comp);
	FUNC2(&conn->conn_post_wait_comp);
}