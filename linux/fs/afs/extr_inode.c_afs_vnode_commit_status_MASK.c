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
struct afs_vnode {int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ abort_code; } ;
struct afs_status_cb {scalar_t__ have_status; scalar_t__ have_cb; TYPE_1__ status; scalar_t__ have_error; } ;
struct TYPE_4__ {scalar_t__ error; } ;
struct afs_fs_cursor {int /*<<< orphan*/  key; TYPE_2__ ac; } ;
typedef  int /*<<< orphan*/  afs_dataversion_t ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 scalar_t__ VNOVNODE ; 
 int /*<<< orphan*/  FUNC0 (struct afs_vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_fs_cursor*,struct afs_vnode*,struct afs_status_cb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_fs_cursor*,struct afs_vnode*,struct afs_status_cb*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*,int /*<<< orphan*/ ,unsigned int,struct afs_status_cb*) ; 
 int /*<<< orphan*/  afs_cb_break_for_deleted ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct afs_fs_cursor *fc,
			     struct afs_vnode *vnode,
			     unsigned int cb_break,
			     const afs_dataversion_t *expected_version,
			     struct afs_status_cb *scb)
{
	if (fc->ac.error != 0)
		return;

	FUNC6(&vnode->cb_lock);

	if (scb->have_error) {
		if (scb->status.abort_code == VNOVNODE) {
			FUNC5(AFS_VNODE_DELETED, &vnode->flags);
			FUNC4(&vnode->vfs_inode);
			FUNC0(vnode, afs_cb_break_for_deleted);
		}
	} else {
		if (scb->have_status)
			FUNC2(fc, vnode, scb, expected_version);
		if (scb->have_cb)
			FUNC1(fc, vnode, scb, cb_break);
	}

	FUNC7(&vnode->cb_lock);

	if (fc->ac.error == 0 && scb->have_status)
		FUNC3(vnode, fc->key, cb_break, scb);
}