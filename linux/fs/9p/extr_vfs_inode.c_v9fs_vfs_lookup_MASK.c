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
struct v9fs_session_info {scalar_t__ cache; } ;
struct TYPE_2__ {scalar_t__ len; unsigned char* name; } ;
struct p9_fid {int /*<<< orphan*/  i_sb; TYPE_1__ d_name; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__ d_name; } ;
struct dentry {int /*<<< orphan*/  i_sb; TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 struct p9_fid* FUNC0 (struct p9_fid*) ; 
 struct p9_fid* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct p9_fid*) ; 
 scalar_t__ NAME_MAX ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 struct p9_fid* FUNC3 (struct p9_fid*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*) ; 
 struct p9_fid* FUNC5 (struct p9_fid*,int,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct p9_fid*,struct p9_fid*,struct p9_fid*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_fid*,struct p9_fid*) ; 
 struct p9_fid* FUNC8 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC9 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC10 (struct p9_fid*) ; 
 struct p9_fid* FUNC11 (struct p9_fid*) ; 

struct dentry *FUNC12(struct inode *dir, struct dentry *dentry,
				      unsigned int flags)
{
	struct dentry *res;
	struct v9fs_session_info *v9ses;
	struct p9_fid *dfid, *fid;
	struct inode *inode;
	const unsigned char *name;

	FUNC6(P9_DEBUG_VFS, "dir: %p dentry: (%pd) %p flags: %x\n",
		 dir, dentry, dentry, flags);

	if (dentry->d_name.len > NAME_MAX)
		return FUNC1(-ENAMETOOLONG);

	v9ses = FUNC10(dir);
	/* We can walk d_parent because we hold the dir->i_mutex */
	dfid = FUNC11(dentry);
	if (FUNC2(dfid))
		return FUNC0(dfid);

	/*
	 * Make sure we don't use a wrong inode due to parallel
	 * unlink. For cached mode create calls request for new
	 * inode. But with cache disabled, lookup should do this.
	 */
	name = dentry->d_name.name;
	fid = FUNC5(dfid, 1, &name, 1);
	if (fid == FUNC1(-ENOENT))
		inode = NULL;
	else if (FUNC2(fid))
		inode = FUNC0(fid);
	else if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
		inode = FUNC8(v9ses, fid, dir->i_sb);
	else
		inode = FUNC9(v9ses, fid, dir->i_sb);
	/*
	 * If we had a rename on the server and a parallel lookup
	 * for the new name, then make sure we instantiate with
	 * the new name. ie look up for a/b, while on server somebody
	 * moved b under k and client parallely did a lookup for
	 * k/b.
	 */
	res = FUNC3(inode, dentry);
	if (!FUNC2(fid)) {
		if (!res)
			FUNC7(dentry, fid);
		else if (!FUNC2(res))
			FUNC7(res, fid);
		else
			FUNC4(fid);
	}
	return res;
}