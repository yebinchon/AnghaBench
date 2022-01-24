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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ U32_MAX_DIGITS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,struct dentry*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC9(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
	struct v9fs_session_info *v9ses = FUNC7(dir);
	int retval;
	char name[2 + U32_MAX_DIGITS + 1 + U32_MAX_DIGITS + 1];
	u32 perm;

	FUNC4(P9_DEBUG_VFS, " %lu,%pd mode: %hx MAJOR: %u MINOR: %u\n",
		 dir->i_ino, dentry, mode,
		 FUNC0(rdev), FUNC1(rdev));

	/* build extension */
	if (FUNC2(mode))
		FUNC5(name, "b %u %u", FUNC0(rdev), FUNC1(rdev));
	else if (FUNC3(mode))
		FUNC5(name, "c %u %u", FUNC0(rdev), FUNC1(rdev));
	else
		*name = 0;

	perm = FUNC6(v9ses, mode);
	retval = FUNC8(dir, dentry, perm, name);

	return retval;
}