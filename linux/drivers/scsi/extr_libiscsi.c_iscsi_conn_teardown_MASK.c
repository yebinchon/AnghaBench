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
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct iscsi_session {int /*<<< orphan*/  eh_mutex; int /*<<< orphan*/  frwd_lock; struct iscsi_conn* leadconn; int /*<<< orphan*/  back_lock; TYPE_1__ cmdpool; int /*<<< orphan*/  state; } ;
struct iscsi_conn {int /*<<< orphan*/  login_task; int /*<<< orphan*/  local_ipaddr; int /*<<< orphan*/  persistent_address; scalar_t__ data; int /*<<< orphan*/  ehwait; int /*<<< orphan*/  c_stage; int /*<<< orphan*/  transport_timer; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_CONN_CLEANUP_WAIT ; 
 int /*<<< orphan*/  ISCSI_DEF_MAX_RECV_SEG_LEN ; 
 int /*<<< orphan*/  ISCSI_STATE_TERMINATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct iscsi_cls_conn *cls_conn)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct iscsi_session *session = conn->session;

	FUNC0(&conn->transport_timer);

	FUNC7(&session->eh_mutex);
	FUNC9(&session->frwd_lock);
	conn->c_stage = ISCSI_CONN_CLEANUP_WAIT;
	if (session->leadconn == conn) {
		/*
		 * leading connection? then give up on recovery.
		 */
		session->state = ISCSI_STATE_TERMINATE;
		FUNC11(&conn->ehwait);
	}
	FUNC10(&session->frwd_lock);

	/* flush queued up work because we free the connection below */
	FUNC4(conn);

	FUNC9(&session->frwd_lock);
	FUNC1((unsigned long) conn->data,
		   FUNC2(ISCSI_DEF_MAX_RECV_SEG_LEN));
	FUNC6(conn->persistent_address);
	FUNC6(conn->local_ipaddr);
	/* regular RX path uses back_lock */
	FUNC9(&session->back_lock);
	FUNC5(&session->cmdpool.queue, (void*)&conn->login_task,
		    sizeof(void*));
	FUNC10(&session->back_lock);
	if (session->leadconn == conn)
		session->leadconn = NULL;
	FUNC10(&session->frwd_lock);
	FUNC8(&session->eh_mutex);

	FUNC3(cls_conn);
}