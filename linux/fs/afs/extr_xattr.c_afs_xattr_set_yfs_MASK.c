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
struct afs_status_cb {size_t size; int /*<<< orphan*/  data; } ;
struct afs_fs_cursor {int /*<<< orphan*/  cb_break; int /*<<< orphan*/  vnode; } ;
struct afs_acl {size_t size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  afs_dataversion_t ;
struct TYPE_3__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int XATTR_CREATE ; 
 scalar_t__ FUNC3 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_fs_cursor*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_fs_cursor*) ; 
 struct key* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_status_cb*) ; 
 struct afs_status_cb* FUNC12 (int,int /*<<< orphan*/ ) ; 
 struct afs_status_cb* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void const*,size_t) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_status_cb*) ; 

__attribute__((used)) static int FUNC17(const struct xattr_handler *handler,
                             struct dentry *dentry,
                             struct inode *inode, const char *name,
                             const void *buffer, size_t size, int flags)
{
	struct afs_fs_cursor fc;
	struct afs_status_cb *scb;
	struct afs_vnode *vnode = FUNC0(inode);
	struct afs_acl *acl = NULL;
	struct key *key;
	int ret = -ENOMEM;

	if (flags == XATTR_CREATE ||
	    FUNC15(name, "acl") != 0)
		return -EINVAL;

	scb = FUNC13(sizeof(struct afs_status_cb), GFP_NOFS);
	if (!scb)
		goto error;

	acl = FUNC12(sizeof(*acl) + size, GFP_KERNEL);
	if (!acl)
		goto error_scb;

	acl->size = size;
	FUNC14(acl->data, buffer, size);

	key = FUNC7(vnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error_acl;
	}

	ret = -ERESTARTSYS;
	if (FUNC3(&fc, vnode, key, true)) {
		afs_dataversion_t data_version = vnode->status.data_version;

		while (FUNC8(&fc)) {
			fc.cb_break = FUNC4(vnode);
			FUNC16(&fc, acl, scb);
		}

		FUNC5(&fc, fc.vnode);
		FUNC9(&fc, vnode, fc.cb_break,
					&data_version, scb);
		ret = FUNC6(&fc);
	}

error_acl:
	FUNC11(acl);
	FUNC10(key);
error_scb:
	FUNC11(scb);
error:
	return ret;
}