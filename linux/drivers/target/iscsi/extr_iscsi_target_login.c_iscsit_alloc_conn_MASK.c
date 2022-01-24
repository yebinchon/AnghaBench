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
struct iscsi_np {int /*<<< orphan*/  np_transport; } ;
struct iscsi_conn_ops {int dummy; } ;
struct iscsi_conn {int /*<<< orphan*/  conn_transport; struct iscsi_conn* conn_ops; int /*<<< orphan*/  conn_cpumask; int /*<<< orphan*/  nopin_timer; int /*<<< orphan*/  nopin_response_timer; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  response_queue_lock; int /*<<< orphan*/  nopin_timer_lock; int /*<<< orphan*/  immed_queue_lock; int /*<<< orphan*/  conn_usage_lock; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  rx_login_comp; int /*<<< orphan*/  tx_half_close_comp; int /*<<< orphan*/  rx_half_close_comp; int /*<<< orphan*/  conn_logout_comp; int /*<<< orphan*/  conn_waiting_on_uc_comp; int /*<<< orphan*/  conn_wait_rcfr_comp; int /*<<< orphan*/  conn_wait_comp; int /*<<< orphan*/  conn_post_wait_comp; int /*<<< orphan*/  response_queue_list; int /*<<< orphan*/  immed_queue_list; int /*<<< orphan*/  conn_cmd_list; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  queues_wq; int /*<<< orphan*/  conn_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TARG_CONN_STATE_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iscsit_handle_nopin_response_timeout ; 
 int /*<<< orphan*/  iscsit_handle_nopin_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_conn*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iscsi_conn *FUNC12(struct iscsi_np *np)
{
	struct iscsi_conn *conn;

	conn = FUNC6(sizeof(struct iscsi_conn), GFP_KERNEL);
	if (!conn) {
		FUNC8("Could not allocate memory for new connection\n");
		return NULL;
	}
	FUNC7("Moving to TARG_CONN_STATE_FREE.\n");
	conn->conn_state = TARG_CONN_STATE_FREE;

	FUNC2(&conn->queues_wq);
	FUNC0(&conn->conn_list);
	FUNC0(&conn->conn_cmd_list);
	FUNC0(&conn->immed_queue_list);
	FUNC0(&conn->response_queue_list);
	FUNC1(&conn->conn_post_wait_comp);
	FUNC1(&conn->conn_wait_comp);
	FUNC1(&conn->conn_wait_rcfr_comp);
	FUNC1(&conn->conn_waiting_on_uc_comp);
	FUNC1(&conn->conn_logout_comp);
	FUNC1(&conn->rx_half_close_comp);
	FUNC1(&conn->tx_half_close_comp);
	FUNC1(&conn->rx_login_comp);
	FUNC9(&conn->cmd_lock);
	FUNC9(&conn->conn_usage_lock);
	FUNC9(&conn->immed_queue_lock);
	FUNC9(&conn->nopin_timer_lock);
	FUNC9(&conn->response_queue_lock);
	FUNC9(&conn->state_lock);

	FUNC10(&conn->nopin_response_timer,
		    iscsit_handle_nopin_response_timeout, 0);
	FUNC10(&conn->nopin_timer, iscsit_handle_nopin_timeout, 0);

	if (FUNC3(conn, np->np_transport) < 0)
		goto free_conn;

	conn->conn_ops = FUNC6(sizeof(struct iscsi_conn_ops), GFP_KERNEL);
	if (!conn->conn_ops) {
		FUNC8("Unable to allocate memory for struct iscsi_conn_ops.\n");
		goto put_transport;
	}

	if (!FUNC11(&conn->conn_cpumask, GFP_KERNEL)) {
		FUNC8("Unable to allocate conn->conn_cpumask\n");
		goto free_conn_ops;
	}

	return conn;

free_conn_ops:
	FUNC5(conn->conn_ops);
put_transport:
	FUNC4(conn->conn_transport);
free_conn:
	FUNC5(conn);
	return NULL;
}