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
struct p9_qid {int dummy; } ;
struct p9_fid {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 int FUNC4 (struct p9_fid*,unsigned char const*,char const*,int /*<<< orphan*/ ,struct p9_qid*) ; 
 struct p9_fid* FUNC5 (struct p9_fid*,int,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_fid*) ; 
 struct p9_fid* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC10 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC11 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC12 (struct p9_fid*) ; 
 struct p9_fid* FUNC13 (struct dentry*) ; 

__attribute__((used)) static int
FUNC14(struct inode *dir, struct dentry *dentry,
		const char *symname)
{
	int err;
	kgid_t gid;
	const unsigned char *name;
	struct p9_qid qid;
	struct inode *inode;
	struct p9_fid *dfid;
	struct p9_fid *fid = NULL;
	struct v9fs_session_info *v9ses;

	name = dentry->d_name.name;
	FUNC6(P9_DEBUG_VFS, "%lu,%s,%s\n", dir->i_ino, name, symname);
	v9ses = FUNC11(dir);

	dfid = FUNC13(dentry);
	if (FUNC0(dfid)) {
		err = FUNC1(dfid);
		FUNC6(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
		return err;
	}

	gid = FUNC8(dir);

	/* Server doesn't alter fid on TSYMLINK. Hence no need to clone it. */
	err = FUNC4(dfid, name, symname, gid, &qid);

	if (err < 0) {
		FUNC6(P9_DEBUG_VFS, "p9_client_symlink failed %d\n", err);
		goto error;
	}

	FUNC12(dir);
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
		/* Now walk from the parent so we can get an unopened fid. */
		fid = FUNC5(dfid, 1, &name, 1);
		if (FUNC0(fid)) {
			err = FUNC1(fid);
			FUNC6(P9_DEBUG_VFS, "p9_client_walk failed %d\n",
				 err);
			fid = NULL;
			goto error;
		}

		/* instantiate inode and assign the unopened fid to dentry */
		inode = FUNC10(v9ses, fid, dir->i_sb);
		if (FUNC0(inode)) {
			err = FUNC1(inode);
			FUNC6(P9_DEBUG_VFS, "inode creation failed %d\n",
				 err);
			goto error;
		}
		FUNC7(dentry, fid);
		FUNC2(dentry, inode);
		fid = NULL;
		err = 0;
	} else {
		/* Not in cached mode. No need to populate inode with stat */
		inode = FUNC9(dir->i_sb, S_IFLNK, 0);
		if (FUNC0(inode)) {
			err = FUNC1(inode);
			goto error;
		}
		FUNC2(dentry, inode);
	}

error:
	if (fid)
		FUNC3(fid);

	return err;
}