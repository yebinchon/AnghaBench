#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
struct iscsi_session {TYPE_1__ cmdpool; int /*<<< orphan*/  frwd_lock; } ;
struct iscsi_conn {char* data; TYPE_2__* login_task; int /*<<< orphan*/  ehwait; int /*<<< orphan*/  tmf_timer; int /*<<< orphan*/  xmitwork; int /*<<< orphan*/  taskqueuelock; int /*<<< orphan*/  requeue; int /*<<< orphan*/  cmdqueue; int /*<<< orphan*/  mgmtqueue; int /*<<< orphan*/  transport_timer; int /*<<< orphan*/  tmf_state; scalar_t__ exp_statsn; int /*<<< orphan*/  id; int /*<<< orphan*/  c_stage; struct iscsi_cls_conn* cls_conn; struct iscsi_session* session; struct iscsi_conn* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_4__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISCSI_CONN_INITIAL_STAGE ; 
 int /*<<< orphan*/  ISCSI_DEF_MAX_RECV_SEG_LEN ; 
 int /*<<< orphan*/  TMF_INITIAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iscsi_check_transport_timeouts ; 
 struct iscsi_cls_conn* FUNC5 (struct iscsi_cls_session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  iscsi_tmf_timedout ; 
 int /*<<< orphan*/  iscsi_xmitworker ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct iscsi_cls_conn *
FUNC14(struct iscsi_cls_session *cls_session, int dd_size,
		 uint32_t conn_idx)
{
	struct iscsi_session *session = cls_session->dd_data;
	struct iscsi_conn *conn;
	struct iscsi_cls_conn *cls_conn;
	char *data;

	cls_conn = FUNC5(cls_session, sizeof(*conn) + dd_size,
				     conn_idx);
	if (!cls_conn)
		return NULL;
	conn = cls_conn->dd_data;
	FUNC9(conn, 0, sizeof(*conn) + dd_size);

	conn->dd_data = cls_conn->dd_data + sizeof(*conn);
	conn->session = session;
	conn->cls_conn = cls_conn;
	conn->c_stage = ISCSI_CONN_INITIAL_STAGE;
	conn->id = conn_idx;
	conn->exp_statsn = 0;
	conn->tmf_state = TMF_INITIAL;

	FUNC13(&conn->transport_timer, iscsi_check_transport_timeouts, 0);

	FUNC0(&conn->mgmtqueue);
	FUNC0(&conn->cmdqueue);
	FUNC0(&conn->requeue);
	FUNC11(&conn->taskqueuelock);
	FUNC1(&conn->xmitwork, iscsi_xmitworker);

	/* allocate login_task used for the login/text sequences */
	FUNC10(&session->frwd_lock);
	if (!FUNC8(&session->cmdpool.queue,
                         (void*)&conn->login_task,
			 sizeof(void*))) {
		FUNC12(&session->frwd_lock);
		goto login_task_alloc_fail;
	}
	FUNC12(&session->frwd_lock);

	data = (char *) FUNC2(GFP_KERNEL,
					 FUNC3(ISCSI_DEF_MAX_RECV_SEG_LEN));
	if (!data)
		goto login_task_data_alloc_fail;
	conn->login_task->data = conn->data = data;

	FUNC13(&conn->tmf_timer, iscsi_tmf_timedout, 0);
	FUNC4(&conn->ehwait);

	return cls_conn;

login_task_data_alloc_fail:
	FUNC7(&session->cmdpool.queue, (void*)&conn->login_task,
		    sizeof(void*));
login_task_alloc_fail:
	FUNC6(cls_conn);
	return NULL;
}