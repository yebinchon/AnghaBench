#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_rxrpc {int /*<<< orphan*/  transport; } ;
struct rxrpc_call {int dummy; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iter; scalar_t__ msg_controllen; int /*<<< orphan*/ * msg_control; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; } ;
struct kvec {int iov_len; int /*<<< orphan*/  iov_base; } ;
struct afs_call {size_t addr_ix; int request_size; scalar_t__ last; scalar_t__ first; int error; int /*<<< orphan*/  state; int /*<<< orphan*/  async_work; scalar_t__ async; struct rxrpc_call* rxcall; TYPE_2__* net; TYPE_1__* type; int /*<<< orphan*/  abort_code; int /*<<< orphan*/  service_id; scalar_t__ send_pages; int /*<<< orphan*/  request; scalar_t__ max_lifespan; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  intr; int /*<<< orphan*/  upgrade; int /*<<< orphan*/  key; scalar_t__ last_to; scalar_t__ first_offset; int /*<<< orphan*/  alist; } ;
struct afs_addr_cursor {size_t index; int responded; int error; int /*<<< orphan*/  abort_code; TYPE_3__* alist; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {struct sockaddr_rxrpc* addrs; } ;
struct TYPE_5__ {int /*<<< orphan*/  socket; int /*<<< orphan*/  nr_outstanding_calls; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* done ) (struct afs_call*) ;int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ECONNABORTED ; 
 scalar_t__ FUNC1 (struct rxrpc_call*) ; 
 int MSG_MORE ; 
 int MSG_WAITALL ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  RX_USER_ABORT ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC3 (char*,struct afs_call*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  afs_call_trace_get ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_notify_end_request_tx ; 
 int /*<<< orphan*/  FUNC8 (struct afs_call*) ; 
 int FUNC9 (struct afs_call*,struct msghdr*) ; 
 int /*<<< orphan*/  afs_wake_up_async_call ; 
 int /*<<< orphan*/  afs_wake_up_call_waiter ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct rxrpc_call*,int /*<<< orphan*/ ,int,char*) ; 
 struct rxrpc_call* FUNC15 (int /*<<< orphan*/ ,struct sockaddr_rxrpc*,int /*<<< orphan*/ ,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct rxrpc_call*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct rxrpc_call*,struct msghdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct rxrpc_call*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC21 (struct afs_call*) ; 

void FUNC22(struct afs_addr_cursor *ac, struct afs_call *call, gfp_t gfp)
{
	struct sockaddr_rxrpc *srx = &ac->alist->addrs[ac->index];
	struct rxrpc_call *rxcall;
	struct msghdr msg;
	struct kvec iov[1];
	s64 tx_total_len;
	int ret;

	FUNC4(",{%pISp},", &srx->transport);

	FUNC0(call->type != NULL);
	FUNC0(call->type->name != NULL);

	FUNC3("____MAKE %p{%s,%x} [%d]____",
	       call, call->type->name, FUNC13(call->key),
	       FUNC10(&call->net->nr_outstanding_calls));

	call->addr_ix = ac->index;
	call->alist = FUNC6(ac->alist);

	/* Work out the length we're going to transmit.  This is awkward for
	 * calls such as FS.StoreData where there's an extra injection of data
	 * after the initial fixed part.
	 */
	tx_total_len = call->request_size;
	if (call->send_pages) {
		if (call->last == call->first) {
			tx_total_len += call->last_to - call->first_offset;
		} else {
			/* It looks mathematically like you should be able to
			 * combine the following lines with the ones above, but
			 * unsigned arithmetic is fun when it wraps...
			 */
			tx_total_len += PAGE_SIZE - call->first_offset;
			tx_total_len += call->last_to;
			tx_total_len += (call->last - call->first - 1) * PAGE_SIZE;
		}
	}

	/* If the call is going to be asynchronous, we need an extra ref for
	 * the call to hold itself so the caller need not hang on to its ref.
	 */
	if (call->async)
		FUNC7(call, afs_call_trace_get);

	/* create a call */
	rxcall = FUNC15(call->net->socket, srx, call->key,
					 (unsigned long)call,
					 tx_total_len, gfp,
					 (call->async ?
					  afs_wake_up_async_call :
					  afs_wake_up_call_waiter),
					 call->upgrade,
					 call->intr,
					 call->debug_id);
	if (FUNC1(rxcall)) {
		ret = FUNC2(rxcall);
		call->error = ret;
		goto error_kill_call;
	}

	call->rxcall = rxcall;

	if (call->max_lifespan)
		FUNC19(call->net->socket, rxcall,
					  call->max_lifespan);

	/* send the request */
	iov[0].iov_base	= call->request;
	iov[0].iov_len	= call->request_size;

	msg.msg_name		= NULL;
	msg.msg_namelen		= 0;
	FUNC12(&msg.msg_iter, WRITE, iov, 1, call->request_size);
	msg.msg_control		= NULL;
	msg.msg_controllen	= 0;
	msg.msg_flags		= MSG_WAITALL | (call->send_pages ? MSG_MORE : 0);

	ret = FUNC18(call->net->socket, rxcall,
				     &msg, call->request_size,
				     afs_notify_end_request_tx);
	if (ret < 0)
		goto error_do_abort;

	if (call->send_pages) {
		ret = FUNC9(call, &msg);
		if (ret < 0)
			goto error_do_abort;
	}

	/* Note that at this point, we may have received the reply or an abort
	 * - and an asynchronous call may already have completed.
	 *
	 * afs_wait_for_call_to_complete(call, ac)
	 * must be called to synchronously clean up.
	 */
	return;

error_do_abort:
	if (ret != -ECONNABORTED) {
		FUNC14(call->net->socket, rxcall,
					RX_USER_ABORT, ret, "KSD");
	} else {
		FUNC12(&msg.msg_iter, READ, NULL, 0, 0);
		FUNC17(call->net->socket, rxcall,
				       &msg.msg_iter, false,
				       &call->abort_code, &call->service_id);
		ac->abort_code = call->abort_code;
		ac->responded = true;
	}
	call->error = ret;
	FUNC21(call);
error_kill_call:
	if (call->type->done)
		call->type->done(call);

	/* We need to dispose of the extra ref we grabbed for an async call.
	 * The call, however, might be queued on afs_async_calls and we need to
	 * make sure we don't get any more notifications that might requeue it.
	 */
	if (call->rxcall) {
		FUNC16(call->net->socket, call->rxcall);
		call->rxcall = NULL;
	}
	if (call->async) {
		if (FUNC11(&call->async_work))
			FUNC8(call);
		FUNC8(call);
	}

	ac->error = ret;
	call->state = AFS_CALL_COMPLETE;
	FUNC5(" = %d", ret);
}