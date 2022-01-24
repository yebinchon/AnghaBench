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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct afs_vnode {int /*<<< orphan*/  flags; int /*<<< orphan*/  cb_interest; TYPE_1__ cb_lock; int /*<<< orphan*/  cb_expires_at; } ;
struct afs_callback {int /*<<< orphan*/  expires_at; } ;
struct afs_status_cb {struct afs_callback callback; } ;
struct afs_fs_cursor {struct afs_cb_interest* cbi; } ;
struct afs_cb_interest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_PROMISED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct afs_vnode*,struct afs_cb_interest*) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_cb_interest*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct afs_cb_interest*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct afs_cb_interest* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct afs_fs_cursor *fc,
			       struct afs_vnode *vnode,
			       struct afs_status_cb *scb,
			       unsigned int cb_break)
{
	struct afs_cb_interest *old;
	struct afs_callback *cb = &scb->callback;

	if (!FUNC0(cb_break, vnode, fc->cbi)) {
		vnode->cb_expires_at	= cb->expires_at;
		old = FUNC6(vnode->cb_interest,
						FUNC4(&vnode->cb_lock.lock));
		if (old != fc->cbi) {
			FUNC5(vnode->cb_interest, FUNC1(fc->cbi));
			FUNC2(FUNC3(vnode), old);
		}
		FUNC7(AFS_VNODE_CB_PROMISED, &vnode->flags);
	}
}