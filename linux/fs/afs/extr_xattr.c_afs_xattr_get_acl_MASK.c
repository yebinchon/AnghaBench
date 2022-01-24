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
struct xattr_handler {int dummy; } ;
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data_version; } ;
struct afs_vnode {TYPE_2__ status; TYPE_1__* volume; } ;
struct afs_status_cb {int size; int /*<<< orphan*/  data; } ;
struct afs_fs_cursor {int /*<<< orphan*/  cb_break; int /*<<< orphan*/  vnode; } ;
struct afs_acl {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  afs_dataversion_t ;
struct TYPE_3__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int ENOMEM ; 
 int ERANGE ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 scalar_t__ FUNC3 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_fs_cursor*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_fs_cursor*) ; 
 struct afs_status_cb* FUNC7 (struct afs_fs_cursor*,struct afs_status_cb*) ; 
 struct key* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC11 (struct key*) ; 
 int /*<<< orphan*/  FUNC12 (struct afs_status_cb*) ; 
 struct afs_status_cb* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC15(const struct xattr_handler *handler,
			     struct dentry *dentry,
			     struct inode *inode, const char *name,
			     void *buffer, size_t size)
{
	struct afs_fs_cursor fc;
	struct afs_status_cb *scb;
	struct afs_vnode *vnode = FUNC0(inode);
	struct afs_acl *acl = NULL;
	struct key *key;
	int ret = -ENOMEM;

	scb = FUNC13(sizeof(struct afs_status_cb), GFP_NOFS);
	if (!scb)
		goto error;

	key = FUNC8(vnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error_scb;
	}

	ret = -ERESTARTSYS;
	if (FUNC3(&fc, vnode, key, true)) {
		afs_dataversion_t data_version = vnode->status.data_version;

		while (FUNC9(&fc)) {
			fc.cb_break = FUNC4(vnode);
			acl = FUNC7(&fc, scb);
		}

		FUNC5(&fc, fc.vnode);
		FUNC10(&fc, vnode, fc.cb_break,
					&data_version, scb);
		ret = FUNC6(&fc);
	}

	if (ret == 0) {
		ret = acl->size;
		if (size > 0) {
			if (acl->size <= size)
				FUNC14(buffer, acl->data, acl->size);
			else
				ret = -ERANGE;
		}
		FUNC12(acl);
	}

	FUNC11(key);
error_scb:
	FUNC12(scb);
error:
	return ret;
}