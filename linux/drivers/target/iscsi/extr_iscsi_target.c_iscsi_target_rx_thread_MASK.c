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
struct iscsi_conn {int /*<<< orphan*/  transport_failed; TYPE_1__* conn_transport; int /*<<< orphan*/  rx_login_comp; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* iscsit_get_rx_pdu ) (struct iscsi_conn*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_conn*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(void *arg)
{
	int rc;
	struct iscsi_conn *conn = arg;
	bool conn_freed = false;

	/*
	 * Allow ourselves to be interrupted by SIGINT so that a
	 * connection recovery / failure event can be triggered externally.
	 */
	FUNC0(SIGINT);
	/*
	 * Wait for iscsi_post_login_handler() to complete before allowing
	 * incoming iscsi/tcp socket I/O, and/or failing the connection.
	 */
	rc = FUNC8(&conn->rx_login_comp);
	if (rc < 0 || FUNC2(conn))
		goto out;

	if (!conn->conn_transport->iscsit_get_rx_pdu)
		return 0;

	conn->conn_transport->iscsit_get_rx_pdu(conn);

	if (!FUNC6(current))
		FUNC1(&conn->transport_failed, 1);
	FUNC3(conn, &conn_freed);

out:
	if (!conn_freed) {
		while (!FUNC4()) {
			FUNC5(100);
		}
	}

	return 0;
}