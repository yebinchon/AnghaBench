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
struct smb_rqst {int dummy; } ;
struct mid_q_entry {int /*<<< orphan*/  credits; int /*<<< orphan*/  qhead; int /*<<< orphan*/  mid_state; int /*<<< orphan*/ * handle; void* callback_data; int /*<<< orphan*/ * callback; int /*<<< orphan*/ * receive; } ;
struct cifs_credits {int value; unsigned int instance; } ;
struct TCP_Server_Info {unsigned int reconnect_instance; int sequence_number; int /*<<< orphan*/  srv_mutex; int /*<<< orphan*/  pending_mid_q; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  mid_receive_t ;
typedef  int /*<<< orphan*/  mid_handle_t ;
typedef  int /*<<< orphan*/  mid_callback_t ;
struct TYPE_2__ {struct mid_q_entry* (* setup_async_request ) (struct TCP_Server_Info*,struct smb_rqst*) ;} ;

/* Variables and functions */
 int const CIFS_HAS_CREDITS ; 
 int const CIFS_OP_MASK ; 
 int EAGAIN ; 
 int /*<<< orphan*/  GlobalMid_Lock ; 
 scalar_t__ FUNC0 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  MID_REQUEST_SUBMITTED ; 
 int FUNC1 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*,struct cifs_credits*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC5 (struct TCP_Server_Info*) ; 
 int /*<<< orphan*/  FUNC6 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct TCP_Server_Info*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct TCP_Server_Info*,int,struct smb_rqst*,int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct mid_q_entry* FUNC14 (struct TCP_Server_Info*,struct smb_rqst*) ; 
 int FUNC15 (struct TCP_Server_Info*,int const,unsigned int*) ; 

int
FUNC16(struct TCP_Server_Info *server, struct smb_rqst *rqst,
		mid_receive_t *receive, mid_callback_t *callback,
		mid_handle_t *handle, void *cbdata, const int flags,
		const struct cifs_credits *exist_credits)
{
	int rc;
	struct mid_q_entry *mid;
	struct cifs_credits credits = { .value = 0, .instance = 0 };
	unsigned int instance;
	int optype;

	optype = flags & CIFS_OP_MASK;

	if ((flags & CIFS_HAS_CREDITS) == 0) {
		rc = FUNC15(server, flags, &instance);
		if (rc)
			return rc;
		credits.value = 1;
		credits.instance = instance;
	} else
		instance = exist_credits->instance;

	FUNC8(&server->srv_mutex);

	/*
	 * We can't use credits obtained from the previous session to send this
	 * request. Check if there were reconnects after we obtained credits and
	 * return -EAGAIN in such cases to let callers handle it.
	 */
	if (instance != server->reconnect_instance) {
		FUNC9(&server->srv_mutex);
		FUNC2(server, &credits, optype);
		return -EAGAIN;
	}

	mid = server->ops->setup_async_request(server, rqst);
	if (FUNC0(mid)) {
		FUNC9(&server->srv_mutex);
		FUNC2(server, &credits, optype);
		return FUNC1(mid);
	}

	mid->receive = receive;
	mid->callback = callback;
	mid->callback_data = cbdata;
	mid->handle = handle;
	mid->mid_state = MID_REQUEST_SUBMITTED;

	/* put it on the pending_mid_q */
	FUNC12(&GlobalMid_Lock);
	FUNC7(&mid->qhead, &server->pending_mid_q);
	FUNC13(&GlobalMid_Lock);

	/*
	 * Need to store the time in mid before calling I/O. For call_async,
	 * I/O response may come back and free the mid entry on another thread.
	 */
	FUNC6(mid);
	FUNC5(server);
	rc = FUNC11(server, 1, rqst, flags);
	FUNC4(server);

	if (rc < 0) {
		FUNC10(server, mid->credits);
		server->sequence_number -= 2;
		FUNC3(mid);
	}

	FUNC9(&server->srv_mutex);

	if (rc == 0)
		return 0;

	FUNC2(server, &credits, optype);
	return rc;
}