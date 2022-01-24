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
typedef  int umode_t ;
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  P9_OREAD ; 
 int FUNC1 (struct p9_fid*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct v9fs_session_info*,int) ; 
 struct p9_fid* FUNC6 (struct v9fs_session_info*,struct inode*,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	int err;
	u32 perm;
	struct p9_fid *fid;
	struct v9fs_session_info *v9ses;

	FUNC4(P9_DEBUG_VFS, "name %pd\n", dentry);
	err = 0;
	v9ses = FUNC7(dir);
	perm = FUNC5(v9ses, mode | S_IFDIR);
	fid = FUNC6(v9ses, dir, dentry, NULL, perm, P9_OREAD);
	if (FUNC0(fid)) {
		err = FUNC1(fid);
		fid = NULL;
	} else {
		FUNC2(dir);
		FUNC8(dir);
	}

	if (fid)
		FUNC3(fid);

	return err;
}