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
struct afs_net {int dummy; } ;
struct afs_call_type {int /*<<< orphan*/  op; } ;
struct afs_call {size_t request_size; size_t reply_max; int /*<<< orphan*/  waitq; int /*<<< orphan*/  operation_ID; void* buffer; void* request; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 struct afs_call* FUNC0 (struct afs_net*,struct afs_call_type const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_call*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ) ; 

struct afs_call *FUNC5(struct afs_net *net,
				     const struct afs_call_type *type,
				     size_t request_size, size_t reply_max)
{
	struct afs_call *call;

	call = FUNC0(net, type, GFP_NOFS);
	if (!call)
		goto nomem_call;

	if (request_size) {
		call->request_size = request_size;
		call->request = FUNC4(request_size, GFP_NOFS);
		if (!call->request)
			goto nomem_free;
	}

	if (reply_max) {
		call->reply_max = reply_max;
		call->buffer = FUNC4(reply_max, GFP_NOFS);
		if (!call->buffer)
			goto nomem_free;
	}

	FUNC1(call, call->reply_max);
	call->operation_ID = type->op;
	FUNC3(&call->waitq);
	return call;

nomem_free:
	FUNC2(call);
nomem_call:
	return NULL;
}