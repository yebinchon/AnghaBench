#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iscsi_session {int /*<<< orphan*/  session_wait_comp; int /*<<< orphan*/  sleep_on_sess_wait_comp; int /*<<< orphan*/  conn_lock; int /*<<< orphan*/  session_continuation; int /*<<< orphan*/  session_state; int /*<<< orphan*/  session_logout; int /*<<< orphan*/  session_fall_back_to_erl0; int /*<<< orphan*/  session_reinstatement; int /*<<< orphan*/  session_stop_active; int /*<<< orphan*/  nconn; TYPE_1__* sess_ops; int /*<<< orphan*/  sid; } ;
struct iscsi_conn {scalar_t__ conn_state; scalar_t__ conn_logout_reason; TYPE_2__* conn_transport; scalar_t__ sock; scalar_t__ conn_rx_hash; scalar_t__ conn_tx_hash; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  connection_reinstatement; int /*<<< orphan*/  conn_post_wait_comp; int /*<<< orphan*/  conn_wait_rcfr_comp; int /*<<< orphan*/  connection_wait_rcfr; int /*<<< orphan*/  conn_wait_comp; int /*<<< orphan*/  sleep_on_conn_wait_comp; int /*<<< orphan*/  connection_recovery; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  conn_logout_remove; int /*<<< orphan*/  bitmap_id; scalar_t__ rx_thread; int /*<<< orphan*/  rx_thread_active; scalar_t__ tx_thread; int /*<<< orphan*/  tx_thread_active; int /*<<< orphan*/  conn_logout_comp; int /*<<< orphan*/  cid; struct iscsi_session* sess; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  comm; } ;
struct TYPE_7__ {int /*<<< orphan*/  ts_bitmap_lock; int /*<<< orphan*/  ts_bitmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* iscsit_free_conn ) (struct iscsi_conn*) ;int /*<<< orphan*/  (* iscsit_wait_conn ) (struct iscsi_conn*) ;int /*<<< orphan*/  rdma_shutdown; } ;
struct TYPE_5__ {int ErrorRecoveryLevel; int /*<<< orphan*/  InitiatorName; } ;

/* Variables and functions */
 scalar_t__ ISCSI_LOGOUT_REASON_CLOSE_CONNECTION ; 
 scalar_t__ ISCSI_LOGOUT_REASON_CLOSE_SESSION ; 
 int /*<<< orphan*/  ISCSI_RX_THREAD_NAME ; 
 int /*<<< orphan*/  ISCSI_TX_THREAD_NAME ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ TARG_CONN_STATE_FREE ; 
 scalar_t__ TARG_CONN_STATE_IN_LOGOUT ; 
 int /*<<< orphan*/  TARG_SESS_STATE_FAILED ; 
 int /*<<< orphan*/  TARG_SESS_STATE_FREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct crypto_ahash* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_ahash*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC13 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC14 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC15 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC16 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC17 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC18 (struct iscsi_conn*) ; 
 TYPE_3__* iscsit_global ; 
 int /*<<< orphan*/  FUNC19 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC20 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC21 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC22 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC23 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC24 (struct iscsi_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC37 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 

int FUNC39(
	struct iscsi_conn *conn)
{
	int conn_logout = (conn->conn_state == TARG_CONN_STATE_IN_LOGOUT);
	struct iscsi_session	*sess = conn->sess;

	FUNC28("Closing iSCSI connection CID %hu on SID:"
		" %u\n", conn->cid, sess->sid);
	/*
	 * Always up conn_logout_comp for the traditional TCP and HW_OFFLOAD
	 * case just in case the RX Thread in iscsi_target_rx_opcode() is
	 * sleeping and the logout response never got sent because the
	 * connection failed.
	 *
	 * However for iser-target, isert_wait4logout() is using conn_logout_comp
	 * to signal logout response TX interrupt completion.  Go ahead and skip
	 * this for iser since isert_rx_opcode() does not wait on logout failure,
	 * and to avoid iscsi_conn pointer dereference in iser-target code.
	 */
	if (!conn->conn_transport->rdma_shutdown)
		FUNC6(&conn->conn_logout_comp);

	if (!FUNC35(current->comm, ISCSI_RX_THREAD_NAME)) {
		if (conn->tx_thread &&
		    FUNC5(&conn->tx_thread_active, true, false)) {
			FUNC29(SIGINT, conn->tx_thread, 1);
			FUNC26(conn->tx_thread);
		}
	} else if (!FUNC35(current->comm, ISCSI_TX_THREAD_NAME)) {
		if (conn->rx_thread &&
		    FUNC5(&conn->rx_thread_active, true, false)) {
			FUNC29(SIGINT, conn->rx_thread, 1);
			FUNC26(conn->rx_thread);
		}
	}

	FUNC31(&iscsit_global->ts_bitmap_lock);
	FUNC4(iscsit_global->ts_bitmap, conn->bitmap_id,
			      FUNC9(1));
	FUNC33(&iscsit_global->ts_bitmap_lock);

	FUNC25(conn);
	FUNC22(conn);
	FUNC23(conn);

	if (conn->conn_transport->iscsit_wait_conn)
		conn->conn_transport->iscsit_wait_conn(conn);

	/*
	 * During Connection recovery drop unacknowledged out of order
	 * commands for this connection, and prepare the other commands
	 * for reallegiance.
	 *
	 * During normal operation clear the out of order commands (but
	 * do not free the struct iscsi_ooo_cmdsn's) and release all
	 * struct iscsi_cmds.
	 */
	if (FUNC2(&conn->connection_recovery)) {
		FUNC16(conn);
		FUNC19(conn);
	} else {
		FUNC12(conn);
		FUNC20(conn);
	}
	FUNC18(conn);

	/*
	 * Handle decrementing session or connection usage count if
	 * a logout response was not able to be sent because the
	 * connection failed.  Fall back to Session Recovery here.
	 */
	if (FUNC2(&conn->conn_logout_remove)) {
		if (conn->conn_logout_reason == ISCSI_LOGOUT_REASON_CLOSE_SESSION) {
			FUNC14(conn);
			FUNC15(sess);
		}
		if (conn->conn_logout_reason == ISCSI_LOGOUT_REASON_CLOSE_CONNECTION)
			FUNC14(conn);

		FUNC3(&conn->conn_logout_remove, 0);
		FUNC3(&sess->session_reinstatement, 0);
		FUNC3(&sess->session_fall_back_to_erl0, 1);
	}

	FUNC32(&sess->conn_lock);
	FUNC27(&conn->conn_list);

	/*
	 * Attempt to let the Initiator know this connection failed by
	 * sending an Connection Dropped Async Message on another
	 * active connection.
	 */
	if (FUNC2(&conn->connection_recovery))
		FUNC10(conn);

	FUNC34(&sess->conn_lock);

	/*
	 * If connection reinstatement is being performed on this connection,
	 * up the connection reinstatement semaphore that is being blocked on
	 * in iscsit_cause_connection_reinstatement().
	 */
	FUNC32(&conn->state_lock);
	if (FUNC2(&conn->sleep_on_conn_wait_comp)) {
		FUNC34(&conn->state_lock);
		FUNC6(&conn->conn_wait_comp);
		FUNC38(&conn->conn_post_wait_comp);
		FUNC32(&conn->state_lock);
	}

	/*
	 * If connection reinstatement is being performed on this connection
	 * by receiving a REMOVECONNFORRECOVERY logout request, up the
	 * connection wait rcfr semaphore that is being blocked on
	 * an iscsit_connection_reinstatement_rcfr().
	 */
	if (FUNC2(&conn->connection_wait_rcfr)) {
		FUNC34(&conn->state_lock);
		FUNC6(&conn->conn_wait_rcfr_comp);
		FUNC38(&conn->conn_post_wait_comp);
		FUNC32(&conn->state_lock);
	}
	FUNC3(&conn->connection_reinstatement, 1);
	FUNC34(&conn->state_lock);

	/*
	 * If any other processes are accessing this connection pointer we
	 * must wait until they have completed.
	 */
	FUNC11(conn);

	FUNC0(conn->conn_tx_hash);
	if (conn->conn_rx_hash) {
		struct crypto_ahash *tfm;

		tfm = FUNC7(conn->conn_rx_hash);
		FUNC0(conn->conn_rx_hash);
		FUNC8(tfm);
	}

	if (conn->sock)
		FUNC30(conn->sock);

	if (conn->conn_transport->iscsit_free_conn)
		conn->conn_transport->iscsit_free_conn(conn);

	FUNC28("Moving to TARG_CONN_STATE_FREE.\n");
	conn->conn_state = TARG_CONN_STATE_FREE;
	FUNC17(conn);

	FUNC32(&sess->conn_lock);
	FUNC1(&sess->nconn);
	FUNC28("Decremented iSCSI connection count to %hu from node:"
		" %s\n", FUNC2(&sess->nconn),
		sess->sess_ops->InitiatorName);
	/*
	 * Make sure that if one connection fails in an non ERL=2 iSCSI
	 * Session that they all fail.
	 */
	if ((sess->sess_ops->ErrorRecoveryLevel != 2) && !conn_logout &&
	     !FUNC2(&sess->session_logout))
		FUNC3(&sess->session_fall_back_to_erl0, 1);

	/*
	 * If this was not the last connection in the session, and we are
	 * performing session reinstatement or falling back to ERL=0, call
	 * iscsit_stop_session() without sleeping to shutdown the other
	 * active connections.
	 */
	if (FUNC2(&sess->nconn)) {
		if (!FUNC2(&sess->session_reinstatement) &&
		    !FUNC2(&sess->session_fall_back_to_erl0)) {
			FUNC34(&sess->conn_lock);
			return 0;
		}
		if (!FUNC2(&sess->session_stop_active)) {
			FUNC3(&sess->session_stop_active, 1);
			FUNC34(&sess->conn_lock);
			FUNC24(sess, 0, 0);
			return 0;
		}
		FUNC34(&sess->conn_lock);
		return 0;
	}

	/*
	 * If this was the last connection in the session and one of the
	 * following is occurring:
	 *
	 * Session Reinstatement is not being performed, and are falling back
	 * to ERL=0 call iscsit_close_session().
	 *
	 * Session Logout was requested.  iscsit_close_session() will be called
	 * elsewhere.
	 *
	 * Session Continuation is not being performed, start the Time2Retain
	 * handler and check if sleep_on_sess_wait_sem is active.
	 */
	if (!FUNC2(&sess->session_reinstatement) &&
	     FUNC2(&sess->session_fall_back_to_erl0)) {
		FUNC34(&sess->conn_lock);
		FUNC13(sess);

		return 0;
	} else if (FUNC2(&sess->session_logout)) {
		FUNC28("Moving to TARG_SESS_STATE_FREE.\n");
		sess->session_state = TARG_SESS_STATE_FREE;
		FUNC34(&sess->conn_lock);

		if (FUNC2(&sess->sleep_on_sess_wait_comp))
			FUNC6(&sess->session_wait_comp);

		return 0;
	} else {
		FUNC28("Moving to TARG_SESS_STATE_FAILED.\n");
		sess->session_state = TARG_SESS_STATE_FAILED;

		if (!FUNC2(&sess->session_continuation)) {
			FUNC34(&sess->conn_lock);
			FUNC21(sess);
		} else
			FUNC34(&sess->conn_lock);

		if (FUNC2(&sess->sleep_on_sess_wait_comp))
			FUNC6(&sess->session_wait_comp);

		return 0;
	}
}