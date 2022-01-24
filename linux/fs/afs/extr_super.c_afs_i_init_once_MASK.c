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
struct afs_vnode {int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  lock_work; int /*<<< orphan*/  granted_locks; int /*<<< orphan*/  pending_locks; int /*<<< orphan*/  wb_keys; int /*<<< orphan*/  lock; int /*<<< orphan*/  wb_lock; int /*<<< orphan*/  validate_lock; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  afs_lock_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *_vnode)
{
	struct afs_vnode *vnode = _vnode;

	FUNC4(vnode, 0, sizeof(*vnode));
	FUNC3(&vnode->vfs_inode);
	FUNC5(&vnode->io_lock);
	FUNC2(&vnode->validate_lock);
	FUNC7(&vnode->wb_lock);
	FUNC7(&vnode->lock);
	FUNC1(&vnode->wb_keys);
	FUNC1(&vnode->pending_locks);
	FUNC1(&vnode->granted_locks);
	FUNC0(&vnode->lock_work, afs_lock_work);
	FUNC6(&vnode->cb_lock);
}