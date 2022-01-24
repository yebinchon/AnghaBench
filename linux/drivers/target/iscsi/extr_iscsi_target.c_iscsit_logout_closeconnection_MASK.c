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
struct iscsi_conn {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  conn_logout_reason; int /*<<< orphan*/  conn_logout_remove; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  cid; struct iscsi_session* sess; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_state; int /*<<< orphan*/  logout_response; int /*<<< orphan*/  logout_cid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_LOGOUT_CID_NOT_FOUND ; 
 int /*<<< orphan*/  ISCSI_LOGOUT_REASON_CLOSE_CONNECTION ; 
 int /*<<< orphan*/  TARG_CONN_STATE_IN_LOGOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 
 struct iscsi_conn* FUNC3 (struct iscsi_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
	struct iscsi_conn *l_conn;
	struct iscsi_session *sess = conn->sess;

	FUNC5("Received logout request CLOSECONNECTION for CID:"
		" %hu on CID: %hu.\n", cmd->logout_cid, conn->cid);

	/*
	 * A Logout Request with a CLOSECONNECTION reason code for a CID
	 * can arrive on a connection with a differing CID.
	 */
	if (conn->cid == cmd->logout_cid) {
		FUNC6(&conn->state_lock);
		FUNC5("Moving to TARG_CONN_STATE_IN_LOGOUT.\n");
		conn->conn_state = TARG_CONN_STATE_IN_LOGOUT;

		FUNC0(&conn->conn_logout_remove, 1);
		conn->conn_logout_reason = ISCSI_LOGOUT_REASON_CLOSE_CONNECTION;
		FUNC4(conn);

		FUNC7(&conn->state_lock);
	} else {
		/*
		 * Handle all different cid CLOSECONNECTION requests in
		 * iscsit_logout_post_handler_diffcid() as to give enough
		 * time for any non immediate command's CmdSN to be
		 * acknowledged on the connection in question.
		 *
		 * Here we simply make sure the CID is still around.
		 */
		l_conn = FUNC3(sess,
				cmd->logout_cid);
		if (!l_conn) {
			cmd->logout_response = ISCSI_LOGOUT_CID_NOT_FOUND;
			FUNC1(cmd, conn,
					cmd->i_state);
			return 0;
		}

		FUNC2(l_conn);
	}

	FUNC1(cmd, conn, cmd->i_state);

	return 0;
}