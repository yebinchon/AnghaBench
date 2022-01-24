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
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  P9_OREAD ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct p9_fid* FUNC4 (struct v9fs_session_info*,struct inode*,struct dentry*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct v9fs_session_info*) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct dentry *dentry,
	u32 perm, const char *extension)
{
	struct p9_fid *fid;
	struct v9fs_session_info *v9ses;

	v9ses = FUNC5(dir);
	if (!FUNC7(v9ses)) {
		FUNC3(P9_DEBUG_ERROR, "not extended\n");
		return -EPERM;
	}

	fid = FUNC4(v9ses, dir, dentry, (char *) extension, perm,
								P9_OREAD);
	if (FUNC0(fid))
		return FUNC1(fid);

	FUNC6(dir);
	FUNC2(fid);
	return 0;
}