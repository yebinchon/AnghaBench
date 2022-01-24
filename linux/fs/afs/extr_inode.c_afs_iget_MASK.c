#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {struct afs_super_info* s_fs_info; } ;
struct key {int dummy; } ;
struct inode {int i_state; int /*<<< orphan*/  i_flags; } ;
struct afs_vnode {int /*<<< orphan*/  flags; } ;
struct afs_super_info {int /*<<< orphan*/  volume; } ;
struct afs_status_cb {int dummy; } ;
struct afs_fid {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_iget_data {int /*<<< orphan*/  volume; struct afs_fid fid; } ;
struct afs_cb_interest {int dummy; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_UNSET ; 
 int ENOMEM ; 
 struct inode* FUNC1 (int) ; 
 int I_NEW ; 
 int /*<<< orphan*/  S_NOATIME ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct afs_vnode*,struct key*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct afs_vnode*) ; 
 int /*<<< orphan*/  afs_iget5_set ; 
 int /*<<< orphan*/  afs_iget5_test ; 
 int FUNC7 (struct afs_vnode*,struct key*,struct afs_cb_interest*,struct afs_vnode*,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inode* FUNC9 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct afs_iget_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

struct inode *FUNC12(struct super_block *sb, struct key *key,
		       struct afs_iget_data *iget_data,
		       struct afs_status_cb *scb,
		       struct afs_cb_interest *cbi,
		       struct afs_vnode *parent_vnode)
{
	struct afs_super_info *as;
	struct afs_vnode *vnode;
	struct afs_fid *fid = &iget_data->fid;
	struct inode *inode;
	int ret;

	FUNC3(",{%llx:%llu.%u},,", fid->vid, fid->vnode, fid->unique);

	as = sb->s_fs_info;
	iget_data->volume = as->volume;

	inode = FUNC9(sb, fid->vnode, afs_iget5_test, afs_iget5_set,
			     iget_data);
	if (!inode) {
		FUNC4(" = -ENOMEM");
		return FUNC1(-ENOMEM);
	}

	FUNC2("GOT INODE %p { vl=%llx vn=%llx, u=%x }",
	       inode, fid->vid, fid->vnode, fid->unique);

	vnode = FUNC0(inode);

	/* deal with an existing inode */
	if (!(inode->i_state & I_NEW)) {
		FUNC4(" = %p", inode);
		return inode;
	}

	if (!scb) {
		/* it's a remotely extant inode */
		ret = FUNC5(vnode, key, true, NULL);
		if (ret < 0)
			goto bad_inode;
	} else {
		ret = FUNC7(vnode, key, cbi, parent_vnode,
						 scb);
		if (ret < 0)
			goto bad_inode;
	}

	FUNC6(vnode);

	/* success */
	FUNC8(AFS_VNODE_UNSET, &vnode->flags);
	inode->i_flags |= S_NOATIME;
	FUNC11(inode);
	FUNC4(" = %p", inode);
	return inode;

	/* failure */
bad_inode:
	FUNC10(inode);
	FUNC4(" = %d [bad]", ret);
	return FUNC1(ret);
}