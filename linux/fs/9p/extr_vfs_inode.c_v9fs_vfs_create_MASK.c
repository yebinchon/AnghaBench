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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_ORDWR ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC3 (struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC4 (struct v9fs_session_info*,struct inode*,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static int
FUNC7(struct inode *dir, struct dentry *dentry, umode_t mode,
		bool excl)
{
	struct v9fs_session_info *v9ses = FUNC5(dir);
	u32 perm = FUNC3(v9ses, mode);
	struct p9_fid *fid;

	/* P9_OEXCL? */
	fid = FUNC4(v9ses, dir, dentry, NULL, perm, P9_ORDWR);
	if (FUNC0(fid))
		return FUNC1(fid);

	FUNC6(dir);
	FUNC2(fid);

	return 0;
}