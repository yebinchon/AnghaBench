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
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 char const* FUNC0 (struct p9_fid*) ; 
 char const* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  kfree_link ; 
 int FUNC3 (struct p9_fid*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 
 struct p9_fid* FUNC6 (struct dentry*) ; 

__attribute__((used)) static const char *
FUNC7(struct dentry *dentry,
		       struct inode *inode,
		       struct delayed_call *done)
{
	struct p9_fid *fid;
	char *target;
	int retval;

	if (!dentry)
		return FUNC1(-ECHILD);

	FUNC4(P9_DEBUG_VFS, "%pd\n", dentry);

	fid = FUNC6(dentry);
	if (FUNC2(fid))
		return FUNC0(fid);
	retval = FUNC3(fid, &target);
	if (retval)
		return FUNC1(retval);
	FUNC5(done, kfree_link, target);
	return target;
}