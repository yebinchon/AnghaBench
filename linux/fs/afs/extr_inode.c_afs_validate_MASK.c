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
struct key {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  validate_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  vfs_inode; TYPE_1__ fid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_PROMISED ; 
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int /*<<< orphan*/  AFS_VNODE_ZAP_DATA ; 
 int ENOENT ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct afs_vnode*) ; 
 int FUNC4 (struct afs_vnode*,struct key*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct afs_vnode *vnode, struct key *key)
{
	bool valid;
	int ret;

	FUNC1("{v={%llx:%llu} fl=%lx},%x",
	       vnode->fid.vid, vnode->fid.vnode, vnode->flags,
	       FUNC8(key));

	FUNC9();
	valid = FUNC3(vnode);
	FUNC10();

	if (FUNC13(AFS_VNODE_DELETED, &vnode->flags))
		FUNC6(&vnode->vfs_inode);

	if (valid)
		goto valid;

	FUNC7(&vnode->validate_lock);

	/* if the promise has expired, we need to check the server again to get
	 * a new promise - note that if the (parent) directory's metadata was
	 * changed then the security may be different and we may no longer have
	 * access */
	if (!FUNC13(AFS_VNODE_CB_PROMISED, &vnode->flags)) {
		FUNC0("not promised");
		ret = FUNC4(vnode, key, false, NULL);
		if (ret < 0) {
			if (ret == -ENOENT) {
				FUNC11(AFS_VNODE_DELETED, &vnode->flags);
				ret = -ESTALE;
			}
			goto error_unlock;
		}
		FUNC0("new promise [fl=%lx]", vnode->flags);
	}

	if (FUNC13(AFS_VNODE_DELETED, &vnode->flags)) {
		FUNC0("file already deleted");
		ret = -ESTALE;
		goto error_unlock;
	}

	/* if the vnode's data version number changed then its contents are
	 * different */
	if (FUNC12(AFS_VNODE_ZAP_DATA, &vnode->flags))
		FUNC5(vnode);
	FUNC14(&vnode->validate_lock);
valid:
	FUNC2(" = 0");
	return 0;

error_unlock:
	FUNC14(&vnode->validate_lock);
	FUNC2(" = %d", ret);
	return ret;
}