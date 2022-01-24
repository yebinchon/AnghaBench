#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  link; } ;
struct TYPE_4__ {TYPE_1__ afs; } ;
struct file_lock {TYPE_2__ fl_u; int /*<<< orphan*/  fl_file; } ;
struct afs_vnode {int /*<<< orphan*/  lock; int /*<<< orphan*/  lock_state; int /*<<< orphan*/  granted_locks; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*) ; 
 int /*<<< orphan*/  afs_flock_op_release_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_vnode*,struct file_lock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct file_lock *fl)
{
	struct afs_vnode *vnode = FUNC0(FUNC6(fl->fl_file));

	FUNC2("");

	FUNC7(&vnode->lock);

	FUNC9(vnode, fl, afs_flock_op_release_lock);
	FUNC4(&fl->fl_u.afs.link);
	if (FUNC5(&vnode->granted_locks))
		FUNC3(vnode);

	FUNC1("state %u for %p", vnode->lock_state, vnode);
	FUNC8(&vnode->lock);
}