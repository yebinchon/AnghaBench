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
typedef  int umode_t ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct posix_acl {int dummy; } ;
struct p9_qid {int dummy; } ;
struct p9_fid {int i_mode; int /*<<< orphan*/  i_sb; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 int S_IFDIR ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*) ; 
 int FUNC5 (struct p9_fid*,unsigned char const*,int,int /*<<< orphan*/ ,struct p9_qid*) ; 
 struct p9_fid* FUNC6 (struct p9_fid*,int,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (struct p9_fid*,int*,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC10 (struct p9_fid*) ; 
 struct p9_fid* FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC12 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC13 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC14 (struct p9_fid*) ; 
 struct p9_fid* FUNC15 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (struct posix_acl*,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC17 (struct p9_fid*,struct p9_fid*,struct posix_acl*,struct posix_acl*) ; 

__attribute__((used)) static int FUNC18(struct inode *dir,
			       struct dentry *dentry, umode_t omode)
{
	int err;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid = NULL, *dfid = NULL;
	kgid_t gid;
	const unsigned char *name;
	umode_t mode;
	struct inode *inode;
	struct p9_qid qid;
	struct posix_acl *dacl = NULL, *pacl = NULL;

	FUNC7(P9_DEBUG_VFS, "name %pd\n", dentry);
	err = 0;
	v9ses = FUNC13(dir);

	omode |= S_IFDIR;
	if (dir->i_mode & S_ISGID)
		omode |= S_ISGID;

	dfid = FUNC15(dentry);
	if (FUNC0(dfid)) {
		err = FUNC1(dfid);
		FUNC7(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
		dfid = NULL;
		goto error;
	}

	gid = FUNC10(dir);
	mode = omode;
	/* Update mode based on ACL value */
	err = FUNC8(dir, &mode, &dacl, &pacl);
	if (err) {
		FUNC7(P9_DEBUG_VFS, "Failed to get acl values in mkdir %d\n",
			 err);
		goto error;
	}
	name = dentry->d_name.name;
	err = FUNC5(dfid, name, mode, gid, &qid);
	if (err < 0)
		goto error;

	fid = FUNC6(dfid, 1, &name, 1);
	if (FUNC0(fid)) {
		err = FUNC1(fid);
		FUNC7(P9_DEBUG_VFS, "p9_client_walk failed %d\n",
			 err);
		fid = NULL;
		goto error;
	}

	/* instantiate inode and assign the unopened fid to the dentry */
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
		inode = FUNC12(v9ses, fid, dir->i_sb);
		if (FUNC0(inode)) {
			err = FUNC1(inode);
			FUNC7(P9_DEBUG_VFS, "inode creation failed %d\n",
				 err);
			goto error;
		}
		FUNC9(dentry, fid);
		FUNC17(inode, fid, dacl, pacl);
		FUNC2(dentry, inode);
		fid = NULL;
		err = 0;
	} else {
		/*
		 * Not in cached mode. No need to populate
		 * inode with stat. We need to get an inode
		 * so that we can set the acl with dentry
		 */
		inode = FUNC11(dir->i_sb, mode, 0);
		if (FUNC0(inode)) {
			err = FUNC1(inode);
			goto error;
		}
		FUNC17(inode, fid, dacl, pacl);
		FUNC2(dentry, inode);
	}
	FUNC3(dir);
	FUNC14(dir);
error:
	if (fid)
		FUNC4(fid);
	FUNC16(dacl, pacl);
	return err;
}