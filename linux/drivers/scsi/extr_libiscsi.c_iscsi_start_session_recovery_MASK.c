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
struct iscsi_session {scalar_t__ state; int /*<<< orphan*/  eh_mutex; int /*<<< orphan*/  frwd_lock; int /*<<< orphan*/  cls_session; } ;
struct iscsi_conn {int stop_stage; int /*<<< orphan*/  tmhdr; scalar_t__ datadgst_en; scalar_t__ hdrdgst_en; int /*<<< orphan*/  c_stage; int /*<<< orphan*/  transport_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_TRANSPORT_DISRUPTED ; 
 int /*<<< orphan*/  ISCSI_CONN_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*) ; 
 scalar_t__ ISCSI_STATE_IN_RECOVERY ; 
 scalar_t__ ISCSI_STATE_TERMINATE ; 
 int STOP_CONN_RECOVER ; 
 int STOP_CONN_TERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_session*,struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_conn*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct iscsi_session *session,
					 struct iscsi_conn *conn, int flag)
{
	int old_stop_stage;

	FUNC7(&session->eh_mutex);
	FUNC9(&session->frwd_lock);
	if (conn->stop_stage == STOP_CONN_TERM) {
		FUNC10(&session->frwd_lock);
		FUNC8(&session->eh_mutex);
		return;
	}

	/*
	 * When this is called for the in_login state, we only want to clean
	 * up the login task and connection. We do not need to block and set
	 * the recovery state again
	 */
	if (flag == STOP_CONN_TERM)
		session->state = ISCSI_STATE_TERMINATE;
	else if (conn->stop_stage != STOP_CONN_RECOVER)
		session->state = ISCSI_STATE_IN_RECOVERY;

	old_stop_stage = conn->stop_stage;
	conn->stop_stage = flag;
	FUNC10(&session->frwd_lock);

	FUNC1(&conn->transport_timer);
	FUNC5(conn);

	FUNC9(&session->frwd_lock);
	conn->c_stage = ISCSI_CONN_STOPPED;
	FUNC10(&session->frwd_lock);

	/*
	 * for connection level recovery we should not calculate
	 * header digest. conn->hdr_size used for optimization
	 * in hdr_extract() and will be re-negotiated at
	 * set_param() time.
	 */
	if (flag == STOP_CONN_RECOVER) {
		conn->hdrdgst_en = 0;
		conn->datadgst_en = 0;
		if (session->state == ISCSI_STATE_IN_RECOVERY &&
		    old_stop_stage != STOP_CONN_RECOVER) {
			FUNC0(session, "blocking session\n");
			FUNC4(session->cls_session);
		}
	}

	/*
	 * flush queues.
	 */
	FUNC9(&session->frwd_lock);
	FUNC3(conn, -1, DID_TRANSPORT_DISRUPTED);
	FUNC2(session, conn);
	FUNC6(&conn->tmhdr, 0, sizeof(conn->tmhdr));
	FUNC10(&session->frwd_lock);
	FUNC8(&session->eh_mutex);
}