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
struct afs_call {int state; int /*<<< orphan*/  state_lock; } ;
typedef  enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct afs_call *call,
				      enum afs_call_state from,
				      enum afs_call_state to)
{
	bool ok = false;

	FUNC0(&call->state_lock);
	if (call->state == from) {
		call->state = to;
		FUNC2(call, from, to, 0, 0);
		ok = true;
	}
	FUNC1(&call->state_lock);
	return ok;
}