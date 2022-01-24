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
struct key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__* volume; } ;
struct afs_status_cb {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  cb_break; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

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
 int /*<<< orphan*/  FUNC6 (struct afs_fs_cursor*,struct afs_status_cb*) ; 
 scalar_t__ FUNC7 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_status_cb*) ; 
 struct afs_status_cb* FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct afs_vnode *vnode, struct key *key)
{
	struct afs_status_cb *scb;
	struct afs_fs_cursor fc;
	int ret;

	FUNC0("%s{%llx:%llu.%u},%x",
	       vnode->volume->name,
	       vnode->fid.vid,
	       vnode->fid.vnode,
	       vnode->fid.unique,
	       FUNC9(key));

	scb = FUNC11(sizeof(struct afs_status_cb), GFP_KERNEL);
	if (!scb)
		return -ENOMEM;

	ret = -ERESTARTSYS;
	if (FUNC2(&fc, vnode, key, false)) {
		while (FUNC7(&fc)) {
			fc.cb_break = FUNC3(vnode);
			FUNC6(&fc, scb);
		}

		FUNC4(&fc, vnode);
		FUNC8(&fc, vnode, fc.cb_break, NULL, scb);
		ret = FUNC5(&fc);
	}

	FUNC10(scb);
	FUNC1(" = %d", ret);
	return ret;
}