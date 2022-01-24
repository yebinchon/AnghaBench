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
struct TYPE_3__ {int /*<<< orphan*/  link; int /*<<< orphan*/  debug_id; } ;
struct TYPE_4__ {TYPE_1__ afs; } ;
struct file_lock {TYPE_2__ fl_u; int /*<<< orphan*/  fl_file; } ;
struct afs_vnode {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_file_lock_debug_id ; 
 int /*<<< orphan*/  afs_flock_op_copy_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_vnode*,struct file_lock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct file_lock *new, struct file_lock *fl)
{
	struct afs_vnode *vnode = FUNC0(FUNC4(fl->fl_file));

	FUNC1("");

	new->fl_u.afs.debug_id = FUNC2(&afs_file_lock_debug_id);

	FUNC5(&vnode->lock);
	FUNC7(vnode, new, afs_flock_op_copy_lock);
	FUNC3(&new->fl_u.afs.link, &fl->fl_u.afs.link);
	FUNC6(&vnode->lock);
}