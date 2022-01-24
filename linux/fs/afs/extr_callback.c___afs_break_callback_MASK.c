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
struct afs_vnode {scalar_t__ lock_state; int /*<<< orphan*/  cb_break; int /*<<< orphan*/  fid; int /*<<< orphan*/  flags; } ;
typedef  enum afs_cb_break_reason { ____Placeholder_afs_cb_break_reason } afs_cb_break_reason ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_PROMISED ; 
 scalar_t__ AFS_VNODE_LOCK_WAITING_FOR_CB ; 
 int /*<<< orphan*/  AFS_VNODE_NEW_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

void FUNC6(struct afs_vnode *vnode, enum afs_cb_break_reason reason)
{
	FUNC0("");

	FUNC3(AFS_VNODE_NEW_CONTENT, &vnode->flags);
	if (FUNC4(AFS_VNODE_CB_PROMISED, &vnode->flags)) {
		vnode->cb_break++;
		FUNC1(vnode);

		if (vnode->lock_state == AFS_VNODE_LOCK_WAITING_FOR_CB)
			FUNC2(vnode);

		FUNC5(&vnode->fid, vnode->cb_break, reason, true);
	} else {
		FUNC5(&vnode->fid, vnode->cb_break, reason, false);
	}
}