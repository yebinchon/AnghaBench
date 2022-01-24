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
typedef  int /*<<< orphan*/  umode_t ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct posix_acl {int dummy; } ;
struct p9_qid {int dummy; } ;
struct p9_fid {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*) ; 
 int FUNC6 (struct p9_fid*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct p9_qid*) ; 
 struct p9_fid* FUNC7 (struct p9_fid*,int,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC9 (struct p9_fid*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC11 (struct p9_fid*) ; 
 struct p9_fid* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC13 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC14 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC15 (struct p9_fid*) ; 
 struct p9_fid* FUNC16 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC17 (struct posix_acl*,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC18 (struct p9_fid*,struct p9_fid*,struct posix_acl*,struct posix_acl*) ; 

__attribute__((used)) static int
FUNC19(struct inode *dir, struct dentry *dentry, umode_t omode,
		dev_t rdev)
{
	int err;
	kgid_t gid;
	const unsigned char *name;
	umode_t mode;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid = NULL, *dfid = NULL;
	struct inode *inode;
	struct p9_qid qid;
	struct posix_acl *dacl = NULL, *pacl = NULL;

	FUNC8(P9_DEBUG_VFS, " %lu,%pd mode: %hx MAJOR: %u MINOR: %u\n",
		 dir->i_ino, dentry, omode,
		 FUNC1(rdev), FUNC2(rdev));

	v9ses = FUNC14(dir);
	dfid = FUNC16(dentry);
	if (FUNC0(dfid)) {
		err = FUNC3(dfid);
		FUNC8(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
		dfid = NULL;
		goto error;
	}

	gid = FUNC11(dir);
	mode = omode;
	/* Update mode based on ACL value */
	err = FUNC9(dir, &mode, &dacl, &pacl);
	if (err) {
		FUNC8(P9_DEBUG_VFS, "Failed to get acl values in mknod %d\n",
			 err);
		goto error;
	}
	name = dentry->d_name.name;

	err = FUNC6(dfid, name, mode, rdev, gid, &qid);
	if (err < 0)
		goto error;

	FUNC15(dir);
	fid = FUNC7(dfid, 1, &name, 1);
	if (FUNC0(fid)) {
		err = FUNC3(fid);
		FUNC8(P9_DEBUG_VFS, "p9_client_walk failed %d\n",
			 err);
		fid = NULL;
		goto error;
	}

	/* instantiate inode and assign the unopened fid to the dentry */
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) {
		inode = FUNC13(v9ses, fid, dir->i_sb);
		if (FUNC0(inode)) {
			err = FUNC3(inode);
			FUNC8(P9_DEBUG_VFS, "inode creation failed %d\n",
				 err);
			goto error;
		}
		FUNC18(inode, fid, dacl, pacl);
		FUNC10(dentry, fid);
		FUNC4(dentry, inode);
		fid = NULL;
		err = 0;
	} else {
		/*
		 * Not in cached mode. No need to populate inode with stat.
		 * socket syscall returns a fd, so we need instantiate
		 */
		inode = FUNC12(dir->i_sb, mode, rdev);
		if (FUNC0(inode)) {
			err = FUNC3(inode);
			goto error;
		}
		FUNC18(inode, fid, dacl, pacl);
		FUNC4(dentry, inode);
	}
error:
	if (fid)
		FUNC5(fid);
	FUNC17(dacl, pacl);
	return err;
}