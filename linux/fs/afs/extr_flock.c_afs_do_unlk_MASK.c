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
struct file_lock {int /*<<< orphan*/  fl_type; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  lock_state; TYPE_1__ fid; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_flock_op_unlock ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int FUNC4 (struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vnode*,struct file_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct file_lock *fl)
{
	struct afs_vnode *vnode = FUNC0(FUNC3(file));
	int ret;

	FUNC1("{%llx:%llu},%u", vnode->fid.vid, vnode->fid.vnode, fl->fl_type);

	FUNC5(vnode, fl, afs_flock_op_unlock);

	/* Flush all pending writes before doing anything with locks. */
	FUNC6(file, 0);

	ret = FUNC4(file, fl);
	FUNC2(" = %d [%u]", ret, vnode->lock_state);
	return ret;
}