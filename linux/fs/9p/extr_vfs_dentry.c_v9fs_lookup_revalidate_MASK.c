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
struct v9fs_session_info {int dummy; } ;
struct v9fs_inode {int cache_validity; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 unsigned int LOOKUP_RCU ; 
 int FUNC1 (struct p9_fid*) ; 
 struct v9fs_inode* FUNC2 (struct inode*) ; 
 int V9FS_INO_INVALID_ATTR ; 
 struct inode* FUNC3 (struct dentry*) ; 
 struct p9_fid* FUNC4 (struct dentry*) ; 
 struct v9fs_session_info* FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct v9fs_session_info*) ; 
 int FUNC7 (struct p9_fid*,struct inode*) ; 
 int FUNC8 (struct p9_fid*,struct inode*) ; 

__attribute__((used)) static int FUNC9(struct dentry *dentry, unsigned int flags)
{
	struct p9_fid *fid;
	struct inode *inode;
	struct v9fs_inode *v9inode;

	if (flags & LOOKUP_RCU)
		return -ECHILD;

	inode = FUNC3(dentry);
	if (!inode)
		goto out_valid;

	v9inode = FUNC2(inode);
	if (v9inode->cache_validity & V9FS_INO_INVALID_ATTR) {
		int retval;
		struct v9fs_session_info *v9ses;
		fid = FUNC4(dentry);
		if (FUNC0(fid))
			return FUNC1(fid);

		v9ses = FUNC5(inode);
		if (FUNC6(v9ses))
			retval = FUNC8(fid, inode);
		else
			retval = FUNC7(fid, inode);
		if (retval == -ENOENT)
			return 0;
		if (retval < 0)
			return retval;
	}
out_valid:
	return 1;
}