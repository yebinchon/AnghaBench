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
typedef  scalar_t__ u64 ;
struct afs_vnode {int /*<<< orphan*/  lock_work; int /*<<< orphan*/  locked_at; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int AFS_LOCKWAIT ; 
 int /*<<< orphan*/  afs_lock_manager ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct afs_vnode *vnode)
{
	ktime_t expires_at, now, duration;
	u64 duration_j;

	expires_at = FUNC0(vnode->locked_at, AFS_LOCKWAIT * 1000 / 2);
	now = FUNC1();
	duration = FUNC2(expires_at, now);
	if (duration <= 0)
		duration_j = 0;
	else
		duration_j = FUNC4(FUNC3(duration));

	FUNC5(afs_lock_manager, &vnode->lock_work, duration_j);
}