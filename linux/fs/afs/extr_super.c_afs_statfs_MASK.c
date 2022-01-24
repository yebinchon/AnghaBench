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
struct kstatfs {int f_blocks; int f_bavail; int f_bfree; scalar_t__ f_namelen; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct key {int dummy; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct afs_volume_status {scalar_t__ max_quota; int part_max_blocks; int blocks_in_use; } ;
struct afs_vnode {TYPE_1__* volume; } ;
struct afs_super_info {scalar_t__ dyn_root; } ;
struct afs_fs_cursor {int /*<<< orphan*/  vnode; int /*<<< orphan*/  cb_break; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_magic; } ;
struct TYPE_3__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 scalar_t__ AFSNAMEMAX ; 
 int /*<<< orphan*/  AFS_BLOCK_SIZE ; 
 int /*<<< orphan*/  AFS_FS_CURSOR_NO_VSLEEP ; 
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct afs_super_info* FUNC1 (TYPE_2__*) ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC2 (struct key*) ; 
 int FUNC3 (struct key*) ; 
 scalar_t__ FUNC4 (struct afs_fs_cursor*,struct afs_vnode*,struct key*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_fs_cursor*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_fs_cursor*,struct afs_volume_status*) ; 
 struct key* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct key*) ; 

__attribute__((used)) static int FUNC13(struct dentry *dentry, struct kstatfs *buf)
{
	struct afs_super_info *as = FUNC1(dentry->d_sb);
	struct afs_fs_cursor fc;
	struct afs_volume_status vs;
	struct afs_vnode *vnode = FUNC0(FUNC11(dentry));
	struct key *key;
	int ret;

	buf->f_type	= dentry->d_sb->s_magic;
	buf->f_bsize	= AFS_BLOCK_SIZE;
	buf->f_namelen	= AFSNAMEMAX - 1;

	if (as->dyn_root) {
		buf->f_blocks	= 1;
		buf->f_bavail	= 0;
		buf->f_bfree	= 0;
		return 0;
	}

	key = FUNC9(vnode->volume->cell);
	if (FUNC2(key))
		return FUNC3(key);

	ret = -ERESTARTSYS;
	if (FUNC4(&fc, vnode, key, true)) {
		fc.flags |= AFS_FS_CURSOR_NO_VSLEEP;
		while (FUNC10(&fc)) {
			fc.cb_break = FUNC5(vnode);
			FUNC8(&fc, &vs);
		}

		FUNC6(&fc, fc.vnode);
		ret = FUNC7(&fc);
	}

	FUNC12(key);

	if (ret == 0) {
		if (vs.max_quota == 0)
			buf->f_blocks = vs.part_max_blocks;
		else
			buf->f_blocks = vs.max_quota;
		buf->f_bavail = buf->f_bfree = buf->f_blocks - vs.blocks_in_use;
	}

	return ret;
}