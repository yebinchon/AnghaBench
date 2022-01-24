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
struct afs_vnode {int /*<<< orphan*/  cb_lock; } ;
typedef  enum afs_cb_break_reason { ____Placeholder_afs_cb_break_reason } afs_cb_break_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_vnode*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct afs_vnode *vnode, enum afs_cb_break_reason reason)
{
	FUNC1(&vnode->cb_lock);
	FUNC0(vnode, reason);
	FUNC2(&vnode->cb_lock);
}