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
typedef  int /*<<< orphan*/  u32 ;
struct iov_iter {int dummy; } ;
struct afs_net {int /*<<< orphan*/  socket; } ;
struct afs_call {int /*<<< orphan*/  error; int /*<<< orphan*/  state; int /*<<< orphan*/  service_id; int /*<<< orphan*/  rxcall; TYPE_1__* type; struct iov_iter* _iter; struct afs_net* net; } ;
typedef  enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  AFS_CALL_CL_AWAIT_REPLY 130 
 int /*<<< orphan*/  AFS_CALL_CL_PROC_REPLY ; 
#define  AFS_CALL_COMPLETE 129 
#define  AFS_CALL_SV_AWAIT_REQUEST 128 
 int /*<<< orphan*/  AFS_CALL_SV_REPLYING ; 
 int EAGAIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_io_error_extract ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iov_iter*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct afs_call *call, bool want_more)
{
	struct afs_net *net = call->net;
	struct iov_iter *iter = call->_iter;
	enum afs_call_state state;
	u32 remote_abort = 0;
	int ret;

	FUNC1("{%s,%zu},%d", call->type->name, FUNC5(iter), want_more);

	ret = FUNC7(net->socket, call->rxcall, iter,
				     want_more, &remote_abort,
				     &call->service_id);
	if (ret == 0 || ret == -EAGAIN)
		return ret;

	state = FUNC0(call->state);
	if (ret == 1) {
		switch (state) {
		case AFS_CALL_CL_AWAIT_REPLY:
			FUNC4(call, state, AFS_CALL_CL_PROC_REPLY);
			break;
		case AFS_CALL_SV_AWAIT_REQUEST:
			FUNC4(call, state, AFS_CALL_SV_REPLYING);
			break;
		case AFS_CALL_COMPLETE:
			FUNC6("prem complete %d", call->error);
			return FUNC2(call, afs_io_error_extract);
		default:
			break;
		}
		return 0;
	}

	FUNC3(call, ret, remote_abort);
	return ret;
}