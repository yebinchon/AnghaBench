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
struct afs_vnode {TYPE_3__ status; TYPE_2__ fid; TYPE_1__* volume; } ;
struct afs_status_cb {int dummy; } ;
struct afs_read {int /*<<< orphan*/  actual_len; } ;
struct afs_fs_cursor {int /*<<< orphan*/  cb_break; } ;
typedef  int /*<<< orphan*/  afs_dataversion_t ;
struct TYPE_8__ {int /*<<< orphan*/  n_fetch_bytes; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_fs_cursor*,struct afs_vnode*) ; 
 int FUNC5 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_read*) ; 
 scalar_t__ FUNC7 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_vnode*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct key*) ; 
 int /*<<< orphan*/  FUNC13 (struct afs_status_cb*) ; 
 struct afs_status_cb* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_fetches ; 

int FUNC15(struct afs_vnode *vnode, struct key *key, struct afs_read *desc)
{
	struct afs_fs_cursor fc;
	struct afs_status_cb *scb;
	int ret;

	FUNC0("%s{%llx:%llu.%u},%x,,,",
	       vnode->volume->name,
	       vnode->fid.vid,
	       vnode->fid.vnode,
	       vnode->fid.unique,
	       FUNC12(key));

	scb = FUNC14(sizeof(struct afs_status_cb), GFP_KERNEL);
	if (!scb)
		return -ENOMEM;

	ret = -ERESTARTSYS;
	if (FUNC2(&fc, vnode, key, true)) {
		afs_dataversion_t data_version = vnode->status.data_version;

		while (FUNC7(&fc)) {
			fc.cb_break = FUNC3(vnode);
			FUNC6(&fc, scb, desc);
		}

		FUNC4(&fc, vnode);
		FUNC10(&fc, vnode, fc.cb_break,
					&data_version, scb);
		ret = FUNC5(&fc);
	}

	if (ret == 0) {
		FUNC8(vnode, n_fetches);
		FUNC11(desc->actual_len,
				&FUNC9(vnode)->n_fetch_bytes);
	}

	FUNC13(scb);
	FUNC1(" = %d", ret);
	return ret;
}