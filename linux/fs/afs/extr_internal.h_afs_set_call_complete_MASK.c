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
typedef  int /*<<< orphan*/  u32 ;
struct afs_call {int state; int error; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  abort_code; } ;
typedef  enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;

/* Variables and functions */
 int AFS_CALL_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct afs_call *call,
					 int error, u32 remote_abort)
{
	enum afs_call_state state;
	bool ok = false;

	FUNC0(&call->state_lock);
	state = call->state;
	if (state != AFS_CALL_COMPLETE) {
		call->abort_code = remote_abort;
		call->error = error;
		call->state = AFS_CALL_COMPLETE;
		FUNC3(call, state, AFS_CALL_COMPLETE,
				     error, remote_abort);
		ok = true;
	}
	FUNC1(&call->state_lock);
	if (ok)
		FUNC2(call);
}