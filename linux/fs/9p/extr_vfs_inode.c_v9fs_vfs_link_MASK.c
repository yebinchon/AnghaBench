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
struct p9_fid {int fid; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  P9_DMLINK ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  U32_MAX_DIGITS ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct p9_fid* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_fid*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct dentry*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10(struct dentry *old_dentry, struct inode *dir,
	      struct dentry *dentry)
{
	int retval;
	char name[1 + U32_MAX_DIGITS + 2]; /* sign + number + \n + \0 */
	struct p9_fid *oldfid;

	FUNC4(P9_DEBUG_VFS, " %lu,%pd,%pd\n",
		 dir->i_ino, dentry, old_dentry);

	oldfid = FUNC6(old_dentry);
	if (FUNC0(oldfid))
		return FUNC1(oldfid);

	FUNC5(name, "%d\n", oldfid->fid);
	retval = FUNC9(dir, dentry, P9_DMLINK, name);
	if (!retval) {
		FUNC8(oldfid, FUNC2(old_dentry));
		FUNC7(dir);
	}
	FUNC3(oldfid);
	return retval;
}