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
struct v9fs_session_info {int /*<<< orphan*/  rename_sem; int /*<<< orphan*/  uname; } ;
struct p9_wstat {int /*<<< orphan*/  name; int /*<<< orphan*/  muid; } ;
struct p9_fid {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {scalar_t__ d_parent; TYPE_1__ d_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct p9_fid* FUNC4 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_fid*) ; 
 int FUNC10 (struct p9_fid*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct p9_fid*,int /*<<< orphan*/ ,struct p9_fid*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct p9_fid*,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 struct p9_fid* FUNC17 (struct dentry*) ; 
 struct v9fs_session_info* FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct dentry*) ; 
 scalar_t__ FUNC21 (struct v9fs_session_info*) ; 

int
FUNC22(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry,
		unsigned int flags)
{
	int retval;
	struct inode *old_inode;
	struct inode *new_inode;
	struct v9fs_session_info *v9ses;
	struct p9_fid *oldfid;
	struct p9_fid *olddirfid;
	struct p9_fid *newdirfid;
	struct p9_wstat wstat;

	if (flags)
		return -EINVAL;

	FUNC13(P9_DEBUG_VFS, "\n");
	retval = 0;
	old_inode = FUNC5(old_dentry);
	new_inode = FUNC5(new_dentry);
	v9ses = FUNC18(old_inode);
	oldfid = FUNC17(old_dentry);
	if (FUNC0(oldfid))
		return FUNC1(oldfid);

	olddirfid = FUNC4(FUNC20(old_dentry));
	if (FUNC0(olddirfid)) {
		retval = FUNC1(olddirfid);
		goto done;
	}

	newdirfid = FUNC4(FUNC20(new_dentry));
	if (FUNC0(newdirfid)) {
		retval = FUNC1(newdirfid);
		goto clunk_olddir;
	}

	FUNC7(&v9ses->rename_sem);
	if (FUNC21(v9ses)) {
		retval = FUNC11(olddirfid, old_dentry->d_name.name,
					    newdirfid, new_dentry->d_name.name);
		if (retval == -EOPNOTSUPP)
			retval = FUNC10(oldfid, newdirfid,
						  new_dentry->d_name.name);
		if (retval != -EOPNOTSUPP)
			goto clunk_newdir;
	}
	if (old_dentry->d_parent != new_dentry->d_parent) {
		/*
		 * 9P .u can only handle file rename in the same directory
		 */

		FUNC13(P9_DEBUG_ERROR, "old dir and new dir are different\n");
		retval = -EXDEV;
		goto clunk_newdir;
	}
	FUNC15(&wstat);
	wstat.muid = v9ses->uname;
	wstat.name = new_dentry->d_name.name;
	retval = FUNC12(oldfid, &wstat);

clunk_newdir:
	if (!retval) {
		if (new_inode) {
			if (FUNC2(new_inode->i_mode))
				FUNC3(new_inode);
			else
				FUNC16(new_inode);
		}
		if (FUNC2(old_inode->i_mode)) {
			if (!new_inode)
				FUNC8(new_dir);
			FUNC16(old_dir);
		}
		FUNC19(old_inode);
		FUNC19(old_dir);
		FUNC19(new_dir);

		/* successful rename */
		FUNC6(old_dentry, new_dentry);
	}
	FUNC14(&v9ses->rename_sem);
	FUNC9(newdirfid);

clunk_olddir:
	FUNC9(olddirfid);

done:
	return retval;
}