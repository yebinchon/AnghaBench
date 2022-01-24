#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  data_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_3__ status; int /*<<< orphan*/  flags; TYPE_2__ fid; TYPE_1__* volume; } ;
struct TYPE_8__ {int /*<<< orphan*/  caller_access; } ;
struct afs_status_cb {TYPE_4__ status; } ;
struct afs_fs_cursor {int error; int /*<<< orphan*/  cb_break; int /*<<< orphan*/  cbi; } ;
typedef  int /*<<< orphan*/  afs_dataversion_t ;
typedef  int /*<<< orphan*/  afs_access_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*,struct key*,int /*<<< orphan*/ ,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_fs_cursor*,struct afs_vnode*) ; 
 int FUNC6 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_fs_cursor*,struct afs_status_cb*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct afs_vnode*,struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 scalar_t__ FUNC9 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_status_cb*) ; 
 struct afs_status_cb* FUNC12 (int,int /*<<< orphan*/ ) ; 

int FUNC13(struct afs_vnode *vnode, struct key *key, bool is_new,
		     afs_access_t *_caller_access)
{
	struct afs_status_cb *scb;
	struct afs_fs_cursor fc;
	int ret;

	FUNC0("%s,{%llx:%llu.%u,S=%lx}",
	       vnode->volume->name,
	       vnode->fid.vid, vnode->fid.vnode, vnode->fid.unique,
	       vnode->flags);

	scb = FUNC12(sizeof(struct afs_status_cb), GFP_KERNEL);
	if (!scb)
		return -ENOMEM;

	ret = -ERESTARTSYS;
	if (FUNC2(&fc, vnode, key, true)) {
		afs_dataversion_t data_version = vnode->status.data_version;

		while (FUNC9(&fc)) {
			fc.cb_break = FUNC4(vnode);
			FUNC7(&fc, scb, NULL);
		}

		if (fc.error) {
			/* Do nothing. */
		} else if (is_new) {
			ret = FUNC8(vnode, key, fc.cbi,
							 NULL, scb);
			fc.error = ret;
			if (ret == 0)
				FUNC3(vnode, key, fc.cb_break, scb);
		} else {
			FUNC10(&fc, vnode, fc.cb_break,
						&data_version, scb);
		}
		FUNC5(&fc, vnode);
		ret = FUNC6(&fc);
	}

	if (ret == 0 && _caller_access)
		*_caller_access = scb->status.caller_access;
	FUNC11(scb);
	FUNC1(" = %d", ret);
	return ret;
}