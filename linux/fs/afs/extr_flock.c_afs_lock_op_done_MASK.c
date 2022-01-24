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
struct afs_vnode {int /*<<< orphan*/  lock; int /*<<< orphan*/  locked_at; } ;
struct afs_call {scalar_t__ error; int /*<<< orphan*/  reply_time; struct afs_vnode* lvnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  afs_flock_timestamp ; 
 int /*<<< orphan*/  FUNC0 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct afs_call *call)
{
	struct afs_vnode *vnode = call->lvnode;

	if (call->error == 0) {
		FUNC1(&vnode->lock);
		FUNC3(vnode, NULL, afs_flock_timestamp, 0);
		vnode->locked_at = call->reply_time;
		FUNC0(vnode);
		FUNC2(&vnode->lock);
	}
}