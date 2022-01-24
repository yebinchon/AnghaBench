#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; } ;
struct TYPE_4__ {scalar_t__ data_version; } ;
struct afs_vnode {int /*<<< orphan*/  fid; int /*<<< orphan*/  flags; struct key* silly_key; TYPE_1__ status; } ;
struct afs_status_cb {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  cb_break; } ;
typedef  scalar_t__ afs_dataversion_t ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_DIR_VALID ; 
 int /*<<< orphan*/  DCACHE_NFSFS_RENAMED ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_vnode*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_edit_dir_for_silly_0 ; 
 int /*<<< orphan*/  afs_edit_dir_for_silly_1 ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vnode*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_fs_cursor*,int /*<<< orphan*/ ,struct afs_vnode*,int /*<<< orphan*/ ,struct afs_status_cb*,struct afs_status_cb*) ; 
 scalar_t__ FUNC8 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_fs_cursor*,struct afs_vnode*,int /*<<< orphan*/ ,scalar_t__*,struct afs_status_cb*) ; 
 struct key* FUNC10 (struct key*) ; 
 int /*<<< orphan*/  FUNC11 (struct key*) ; 
 int /*<<< orphan*/  FUNC12 (struct afs_status_cb*) ; 
 struct afs_status_cb* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct afs_vnode*,int) ; 

__attribute__((used)) static int FUNC18(struct afs_vnode *dvnode, struct afs_vnode *vnode,
			       struct dentry *old, struct dentry *new,
			       struct key *key)
{
	struct afs_fs_cursor fc;
	struct afs_status_cb *scb;
	int ret = -ERESTARTSYS;

	FUNC0("%pd,%pd", old, new);

	scb = FUNC13(sizeof(struct afs_status_cb), GFP_KERNEL);
	if (!scb)
		return -ENOMEM;

	FUNC17(vnode, false);
	if (FUNC2(&fc, dvnode, key, true)) {
		afs_dataversion_t dir_data_version = dvnode->status.data_version + 1;

		while (FUNC8(&fc)) {
			fc.cb_break = FUNC3(dvnode);
			FUNC7(&fc, old->d_name.name,
				      dvnode, new->d_name.name,
				      scb, scb);
		}

		FUNC9(&fc, dvnode, fc.cb_break,
					&dir_data_version, scb);
		ret = FUNC6(&fc);
	}

	if (ret == 0) {
		FUNC14(&old->d_lock);
		old->d_flags |= DCACHE_NFSFS_RENAMED;
		FUNC15(&old->d_lock);
		if (dvnode->silly_key != key) {
			FUNC11(dvnode->silly_key);
			dvnode->silly_key = FUNC10(key);
		}

		if (FUNC16(AFS_VNODE_DIR_VALID, &dvnode->flags))
			FUNC5(dvnode, &old->d_name,
					    afs_edit_dir_for_silly_0);
		if (FUNC16(AFS_VNODE_DIR_VALID, &dvnode->flags))
			FUNC4(dvnode, &new->d_name,
					 &vnode->fid, afs_edit_dir_for_silly_1);
	}

	FUNC12(scb);
	FUNC1(" = %d", ret);
	return ret;
}