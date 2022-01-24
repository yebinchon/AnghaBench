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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int /*<<< orphan*/  i_sb; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 struct p9_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int P9_DMLINK ; 
 int FUNC2 (struct p9_fid*) ; 
 struct p9_fid* FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*) ; 
 int FUNC6 (struct p9_fid*,unsigned char const*,int,int /*<<< orphan*/ ,char*) ; 
 struct p9_fid* FUNC7 (struct p9_fid*,int,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct p9_fid*) ; 
 struct p9_fid* FUNC10 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC11 (struct dentry*) ; 

__attribute__((used)) static struct p9_fid *
FUNC12(struct v9fs_session_info *v9ses, struct inode *dir,
		struct dentry *dentry, char *extension, u32 perm, u8 mode)
{
	int err;
	const unsigned char *name;
	struct p9_fid *dfid, *ofid, *fid;
	struct inode *inode;

	FUNC8(P9_DEBUG_VFS, "name %pd\n", dentry);

	err = 0;
	ofid = NULL;
	fid = NULL;
	name = dentry->d_name.name;
	dfid = FUNC11(dentry);
	if (FUNC1(dfid)) {
		err = FUNC2(dfid);
		FUNC8(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
		return FUNC0(err);
	}

	/* clone a fid to use for creation */
	ofid = FUNC3(dfid);
	if (FUNC1(ofid)) {
		err = FUNC2(ofid);
		FUNC8(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
		return FUNC0(err);
	}

	err = FUNC6(ofid, name, perm, mode, extension);
	if (err < 0) {
		FUNC8(P9_DEBUG_VFS, "p9_client_fcreate failed %d\n", err);
		goto error;
	}

	if (!(perm & P9_DMLINK)) {
		/* now walk from the parent so we can get unopened fid */
		fid = FUNC7(dfid, 1, &name, 1);
		if (FUNC1(fid)) {
			err = FUNC2(fid);
			FUNC8(P9_DEBUG_VFS,
				   "p9_client_walk failed %d\n", err);
			fid = NULL;
			goto error;
		}
		/*
		 * instantiate inode and assign the unopened fid to the dentry
		 */
		inode = FUNC10(v9ses, fid, dir->i_sb);
		if (FUNC1(inode)) {
			err = FUNC2(inode);
			FUNC8(P9_DEBUG_VFS,
				   "inode creation failed %d\n", err);
			goto error;
		}
		FUNC9(dentry, fid);
		FUNC4(dentry, inode);
	}
	return ofid;
error:
	if (ofid)
		FUNC5(ofid);

	if (fid)
		FUNC5(fid);

	return FUNC0(err);
}