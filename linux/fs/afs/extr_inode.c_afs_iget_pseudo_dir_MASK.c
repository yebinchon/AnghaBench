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
struct super_block {struct afs_super_info* s_fs_info; } ;
struct inode {int i_state; int i_mode; int /*<<< orphan*/  i_flags; scalar_t__ i_generation; scalar_t__ i_blocks; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; scalar_t__ i_size; int /*<<< orphan*/  i_ino; } ;
struct afs_vnode {int /*<<< orphan*/  flags; } ;
struct afs_super_info {TYPE_1__* volume; } ;
struct TYPE_4__ {int vnode; int unique; int /*<<< orphan*/  vid; } ;
struct afs_iget_data {TYPE_2__ fid; TYPE_1__* volume; int /*<<< orphan*/  cb_s_break; int /*<<< orphan*/  cb_v_break; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_3__ {int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_MOUNTPOINT ; 
 int /*<<< orphan*/  AFS_VNODE_PSEUDODIR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int I_NEW ; 
 int /*<<< orphan*/  S_AUTOMOUNT ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  S_NOATIME ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  afs_autocell_inode_operations ; 
 int /*<<< orphan*/  afs_dynroot_inode_operations ; 
 int /*<<< orphan*/  afs_iget5_pseudo_dir_test ; 
 int /*<<< orphan*/  afs_iget5_set ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct super_block*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct afs_iget_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

struct inode *FUNC13(struct super_block *sb, bool root)
{
	struct afs_super_info *as;
	struct afs_vnode *vnode;
	struct inode *inode;
	static atomic_t afs_autocell_ino;

	struct afs_iget_data iget_data = {
		.cb_v_break = 0,
		.cb_s_break = 0,
	};

	FUNC4("");

	as = sb->s_fs_info;
	if (as->volume) {
		iget_data.volume = as->volume;
		iget_data.fid.vid = as->volume->vid;
	}
	if (root) {
		iget_data.fid.vnode = 1;
		iget_data.fid.unique = 1;
	} else {
		iget_data.fid.vnode = FUNC6(&afs_autocell_ino);
		iget_data.fid.unique = 0;
	}

	inode = FUNC8(sb, iget_data.fid.vnode,
			     afs_iget5_pseudo_dir_test, afs_iget5_set,
			     &iget_data);
	if (!inode) {
		FUNC5(" = -ENOMEM");
		return FUNC2(-ENOMEM);
	}

	FUNC3("GOT INODE %p { ino=%lu, vl=%llx, vn=%llx, u=%x }",
	       inode, inode->i_ino, iget_data.fid.vid, iget_data.fid.vnode,
	       iget_data.fid.unique);

	vnode = FUNC0(inode);

	/* there shouldn't be an existing inode */
	FUNC1(!(inode->i_state & I_NEW));

	inode->i_size		= 0;
	inode->i_mode		= S_IFDIR | S_IRUGO | S_IXUGO;
	if (root) {
		inode->i_op	= &afs_dynroot_inode_operations;
		inode->i_fop	= &simple_dir_operations;
	} else {
		inode->i_op	= &afs_autocell_inode_operations;
	}
	FUNC11(inode, 2);
	inode->i_uid		= GLOBAL_ROOT_UID;
	inode->i_gid		= GLOBAL_ROOT_GID;
	inode->i_ctime = inode->i_atime = inode->i_mtime = FUNC7(inode);
	inode->i_blocks		= 0;
	FUNC9(inode, 0);
	inode->i_generation	= 0;

	FUNC10(AFS_VNODE_PSEUDODIR, &vnode->flags);
	if (!root) {
		FUNC10(AFS_VNODE_MOUNTPOINT, &vnode->flags);
		inode->i_flags |= S_AUTOMOUNT;
	}

	inode->i_flags |= S_NOATIME;
	FUNC12(inode);
	FUNC5(" = %p", inode);
	return inode;
}