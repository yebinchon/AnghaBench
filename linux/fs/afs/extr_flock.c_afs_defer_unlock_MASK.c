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
struct afs_vnode {scalar_t__ lock_state; int /*<<< orphan*/  lock_work; int /*<<< orphan*/  granted_locks; } ;

/* Variables and functions */
 scalar_t__ AFS_VNODE_LOCK_EXTENDING ; 
 scalar_t__ AFS_VNODE_LOCK_GRANTED ; 
 int /*<<< orphan*/  AFS_VNODE_LOCK_NEED_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  afs_flock_defer_unlock ; 
 int /*<<< orphan*/  afs_lock_manager ; 
 int /*<<< orphan*/  FUNC1 (struct afs_vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct afs_vnode *vnode)
{
	FUNC0("%u", vnode->lock_state);

	if (FUNC3(&vnode->granted_locks) &&
	    (vnode->lock_state == AFS_VNODE_LOCK_GRANTED ||
	     vnode->lock_state == AFS_VNODE_LOCK_EXTENDING)) {
		FUNC2(&vnode->lock_work);

		FUNC1(vnode, AFS_VNODE_LOCK_NEED_UNLOCK);
		FUNC5(vnode, NULL, afs_flock_defer_unlock, 0);
		FUNC4(afs_lock_manager, &vnode->lock_work, 0);
	}
}