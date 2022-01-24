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
struct p9_fid {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct p9_fid*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct p9_fid* FUNC7 (struct dentry*) ; 
 struct v9fs_session_info* FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct p9_fid* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct p9_fid*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct dentry *old_dentry, struct inode *dir,
		struct dentry *dentry)
{
	int err;
	struct p9_fid *dfid, *oldfid;
	struct v9fs_session_info *v9ses;

	FUNC6(P9_DEBUG_VFS, "dir ino: %lu, old_name: %pd, new_name: %pd\n",
		 dir->i_ino, old_dentry, dentry);

	v9ses = FUNC8(dir);
	dfid = FUNC10(dentry);
	if (FUNC0(dfid))
		return FUNC1(dfid);

	oldfid = FUNC7(old_dentry);
	if (FUNC0(oldfid))
		return FUNC1(oldfid);

	err = FUNC5(dfid, oldfid, dentry->d_name.name);

	if (err < 0) {
		FUNC6(P9_DEBUG_VFS, "p9_client_link failed %d\n", err);
		return err;
	}

	FUNC9(dir);
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
		/* Get the latest stat info from server. */
		struct p9_fid *fid;
		fid = FUNC7(old_dentry);
		if (FUNC0(fid))
			return FUNC1(fid);

		FUNC11(fid, FUNC2(old_dentry));
	}
	FUNC4(FUNC2(old_dentry));
	FUNC3(dentry, FUNC2(old_dentry));

	return err;
}