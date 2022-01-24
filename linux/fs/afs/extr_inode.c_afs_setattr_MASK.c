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
struct iattr {int ia_valid; int /*<<< orphan*/  ia_file; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  data_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_4__ status; TYPE_3__* volume; TYPE_2__ vfs_inode; TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  cb_break; } ;
typedef  int /*<<< orphan*/  afs_dataversion_t ;
struct TYPE_7__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int ATTR_FILE ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_fs_cursor*,struct afs_vnode*) ; 
 int FUNC9 (struct afs_fs_cursor*) ; 
 struct key* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_fs_cursor*,struct iattr*,struct afs_status_cb*) ; 
 struct key* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC14 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct key*) ; 
 int /*<<< orphan*/  FUNC18 (struct afs_status_cb*) ; 
 struct afs_status_cb* FUNC19 (int,int /*<<< orphan*/ ) ; 

int FUNC20(struct dentry *dentry, struct iattr *attr)
{
	struct afs_fs_cursor fc;
	struct afs_status_cb *scb;
	struct afs_vnode *vnode = FUNC0(FUNC15(dentry));
	struct key *key;
	int ret = -ENOMEM;

	FUNC4("{%llx:%llu},{n=%pd},%x",
	       vnode->fid.vid, vnode->fid.vnode, dentry,
	       attr->ia_valid);

	if (!(attr->ia_valid & (ATTR_SIZE | ATTR_MODE | ATTR_UID | ATTR_GID |
				ATTR_MTIME))) {
		FUNC5(" = 0 [unsupported]");
		return 0;
	}

	scb = FUNC19(sizeof(struct afs_status_cb), GFP_KERNEL);
	if (!scb)
		goto error;

	/* flush any dirty data outstanding on a regular file */
	if (FUNC3(vnode->vfs_inode.i_mode))
		FUNC16(vnode->vfs_inode.i_mapping);

	if (attr->ia_valid & ATTR_FILE) {
		key = FUNC10(attr->ia_file);
	} else {
		key = FUNC12(vnode->volume->cell);
		if (FUNC1(key)) {
			ret = FUNC2(key);
			goto error_scb;
		}
	}

	ret = -ERESTARTSYS;
	if (FUNC6(&fc, vnode, key, false)) {
		afs_dataversion_t data_version = vnode->status.data_version;

		if (attr->ia_valid & ATTR_SIZE)
			data_version++;

		while (FUNC13(&fc)) {
			fc.cb_break = FUNC7(vnode);
			FUNC11(&fc, attr, scb);
		}

		FUNC8(&fc, vnode);
		FUNC14(&fc, vnode, fc.cb_break,
					&data_version, scb);
		ret = FUNC9(&fc);
	}

	if (!(attr->ia_valid & ATTR_FILE))
		FUNC17(key);

error_scb:
	FUNC18(scb);
error:
	FUNC5(" = %d", ret);
	return ret;
}