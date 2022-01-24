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
struct afs_call {TYPE_1__* type; int /*<<< orphan*/  tmp; int /*<<< orphan*/  operation_ID; int /*<<< orphan*/  _iter; } ;
struct TYPE_2__ {int (* deliver ) (struct afs_call*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_SV_AWAIT_OP_ID ; 
 int /*<<< orphan*/  AFS_CALL_SV_AWAIT_REQUEST ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_call*) ; 
 int FUNC2 (struct afs_call*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_call*) ; 

__attribute__((used)) static int FUNC8(struct afs_call *call)
{
	int ret;

	FUNC0("{%zu}", FUNC4(call->_iter));

	/* the operation ID forms the first four bytes of the request data */
	ret = FUNC2(call, true);
	if (ret < 0)
		return ret;

	call->operation_ID = FUNC5(call->tmp);
	FUNC3(call, AFS_CALL_SV_AWAIT_OP_ID, AFS_CALL_SV_AWAIT_REQUEST);

	/* ask the cache manager to route the call (it'll change the call type
	 * if successful) */
	if (!FUNC1(call))
		return -ENOTSUPP;

	FUNC7(call);

	/* pass responsibility for the remainer of this message off to the
	 * cache manager op */
	return call->type->deliver(call);
}