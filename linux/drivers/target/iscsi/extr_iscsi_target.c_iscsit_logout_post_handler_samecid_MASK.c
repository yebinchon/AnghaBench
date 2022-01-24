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
struct iscsi_conn {int /*<<< orphan*/  conn_logout_comp; int /*<<< orphan*/  conn_logout_remove; int /*<<< orphan*/  tx_thread_active; TYPE_1__* conn_transport; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdma_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 

__attribute__((used)) static void FUNC5(
	struct iscsi_conn *conn)
{
	int sleep = 1;

	if (!conn->conn_transport->rdma_shutdown) {
		sleep = FUNC1(&conn->tx_thread_active, true, false);
		if (!sleep)
			return;
	}

	FUNC0(&conn->conn_logout_remove, 0);
	FUNC2(&conn->conn_logout_comp);

	FUNC3(conn, sleep);
	FUNC4(conn);
}