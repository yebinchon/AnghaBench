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
struct yfs_acl {int inherit_flag; int num_cleaned; TYPE_4__* vol_acl; TYPE_3__* acl; int /*<<< orphan*/  flags; } ;
struct xattr_handler {int dummy; } ;
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_version; } ;
struct afs_vnode {TYPE_2__ status; TYPE_1__* volume; } ;
struct afs_status_cb {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  cb_break; int /*<<< orphan*/  vnode; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  afs_dataversion_t ;
struct TYPE_8__ {char* data; int size; } ;
struct TYPE_7__ {char* data; int size; } ;
struct TYPE_5__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ERANGE ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  YFS_ACL_WANT_ACL ; 
 int /*<<< orphan*/  YFS_ACL_WANT_VOL_ACL ; 
 scalar_t__ FUNC3 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_fs_cursor*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_fs_cursor*) ; 
 struct key* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_status_cb*) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,char*,int) ; 
 int FUNC14 (char*,int,char*,int) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct yfs_acl*) ; 
 int /*<<< orphan*/  FUNC17 (struct afs_fs_cursor*,struct yfs_acl*,struct afs_status_cb*) ; 

__attribute__((used)) static int FUNC18(const struct xattr_handler *handler,
			     struct dentry *dentry,
			     struct inode *inode, const char *name,
			     void *buffer, size_t size)
{
	struct afs_fs_cursor fc;
	struct afs_status_cb *scb;
	struct afs_vnode *vnode = FUNC0(inode);
	struct yfs_acl *yacl = NULL;
	struct key *key;
	char buf[16], *data;
	int which = 0, dsize, ret = -ENOMEM;

	if (FUNC15(name, "acl") == 0)
		which = 0;
	else if (FUNC15(name, "acl_inherited") == 0)
		which = 1;
	else if (FUNC15(name, "acl_num_cleaned") == 0)
		which = 2;
	else if (FUNC15(name, "vol_acl") == 0)
		which = 3;
	else
		return -EOPNOTSUPP;

	yacl = FUNC12(sizeof(struct yfs_acl), GFP_KERNEL);
	if (!yacl)
		goto error;

	if (which == 0)
		yacl->flags |= YFS_ACL_WANT_ACL;
	else if (which == 3)
		yacl->flags |= YFS_ACL_WANT_VOL_ACL;

	scb = FUNC12(sizeof(struct afs_status_cb), GFP_NOFS);
	if (!scb)
		goto error_yacl;

	key = FUNC7(vnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error_scb;
	}

	ret = -ERESTARTSYS;
	if (FUNC3(&fc, vnode, key, true)) {
		afs_dataversion_t data_version = vnode->status.data_version;

		while (FUNC8(&fc)) {
			fc.cb_break = FUNC4(vnode);
			FUNC17(&fc, yacl, scb);
		}

		FUNC5(&fc, fc.vnode);
		FUNC9(&fc, vnode, fc.cb_break,
					&data_version, scb);
		ret = FUNC6(&fc);
	}

	if (ret < 0)
		goto error_key;

	switch (which) {
	case 0:
		data = yacl->acl->data;
		dsize = yacl->acl->size;
		break;
	case 1:
		data = buf;
		dsize = FUNC14(buf, sizeof(buf), "%u", yacl->inherit_flag);
		break;
	case 2:
		data = buf;
		dsize = FUNC14(buf, sizeof(buf), "%u", yacl->num_cleaned);
		break;
	case 3:
		data = yacl->vol_acl->data;
		dsize = yacl->vol_acl->size;
		break;
	default:
		ret = -EOPNOTSUPP;
		goto error_key;
	}

	ret = dsize;
	if (size > 0) {
		if (dsize > size) {
			ret = -ERANGE;
			goto error_key;
		}
		FUNC13(buffer, data, dsize);
	}

error_key:
	FUNC10(key);
error_scb:
	FUNC11(scb);
error_yacl:
	FUNC16(yacl);
error:
	return ret;
}