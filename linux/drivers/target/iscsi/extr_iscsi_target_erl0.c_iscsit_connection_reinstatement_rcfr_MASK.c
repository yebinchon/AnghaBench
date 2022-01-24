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
struct iscsi_conn {int /*<<< orphan*/  conn_post_wait_comp; int /*<<< orphan*/  conn_wait_rcfr_comp; scalar_t__ rx_thread; scalar_t__ rx_thread_active; scalar_t__ tx_thread; scalar_t__ tx_thread_active; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  transport_failed; int /*<<< orphan*/  connection_exit; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct iscsi_conn *conn)
{
	FUNC3(&conn->state_lock);
	if (FUNC0(&conn->connection_exit)) {
		FUNC4(&conn->state_lock);
		goto sleep;
	}

	if (FUNC0(&conn->transport_failed)) {
		FUNC4(&conn->state_lock);
		goto sleep;
	}
	FUNC4(&conn->state_lock);

	if (conn->tx_thread && conn->tx_thread_active)
		FUNC2(SIGINT, conn->tx_thread, 1);
	if (conn->rx_thread && conn->rx_thread_active)
		FUNC2(SIGINT, conn->rx_thread, 1);

sleep:
	FUNC5(&conn->conn_wait_rcfr_comp);
	FUNC1(&conn->conn_post_wait_comp);
}