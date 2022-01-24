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
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {scalar_t__ lock_state; int /*<<< orphan*/  lock; TYPE_1__ fid; } ;

/* Variables and functions */
 scalar_t__ AFS_VNODE_LOCK_WAITING_FOR_CB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_flock_callback_break ; 
 int /*<<< orphan*/  FUNC1 (struct afs_vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct afs_vnode *vnode)
{
	FUNC0("{%llx:%llu}", vnode->fid.vid, vnode->fid.vnode);

	FUNC2(&vnode->lock);
	if (vnode->lock_state == AFS_VNODE_LOCK_WAITING_FOR_CB)
		FUNC1(vnode, 0);
	FUNC4(vnode, NULL, afs_flock_callback_break, 0);
	FUNC3(&vnode->lock);
}