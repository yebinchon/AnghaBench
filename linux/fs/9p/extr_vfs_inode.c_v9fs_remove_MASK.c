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
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int AT_REMOVEDIR ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct p9_fid*) ; 
 int FUNC5 (struct p9_fid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct p9_fid* FUNC9 (struct dentry*) ; 
 struct v9fs_session_info* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 struct p9_fid* FUNC12 (struct dentry*) ; 
 scalar_t__ FUNC13 (struct v9fs_session_info*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry, int flags)
{
	struct inode *inode;
	int retval = -EOPNOTSUPP;
	struct p9_fid *v9fid, *dfid;
	struct v9fs_session_info *v9ses;

	FUNC6(P9_DEBUG_VFS, "inode: %p dentry: %p rmdir: %x\n",
		 dir, dentry, flags);

	v9ses = FUNC10(dir);
	inode = FUNC3(dentry);
	dfid = FUNC12(dentry);
	if (FUNC0(dfid)) {
		retval = FUNC1(dfid);
		FUNC6(P9_DEBUG_VFS, "fid lookup failed %d\n", retval);
		return retval;
	}
	if (FUNC13(v9ses))
		retval = FUNC5(dfid, dentry->d_name.name,
					    FUNC7(flags));
	if (retval == -EOPNOTSUPP) {
		/* Try the one based on path */
		v9fid = FUNC9(dentry);
		if (FUNC0(v9fid))
			return FUNC1(v9fid);
		retval = FUNC4(v9fid);
	}
	if (!retval) {
		/*
		 * directories on unlink should have zero
		 * link count
		 */
		if (flags & AT_REMOVEDIR) {
			FUNC2(inode);
			FUNC8(dir);
		} else
			FUNC8(inode);

		FUNC11(inode);
		FUNC11(dir);
	}
	return retval;
}