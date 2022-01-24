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
struct v9fs_session_info {int dummy; } ;
struct p9_wstat {int mode; char* extension; } ;
struct p9_fid {int mode; char* extension; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  ECHILD ; 
 int /*<<< orphan*/  EINVAL ; 
 char const* FUNC0 (struct p9_wstat*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct p9_wstat*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int P9_DMSYMLINK ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct p9_wstat*) ; 
 int /*<<< orphan*/  kfree_link ; 
 struct p9_wstat* FUNC4 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC7 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (char*) ; 
 struct v9fs_session_info* FUNC9 (struct dentry*) ; 
 struct p9_wstat* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct v9fs_session_info*) ; 

__attribute__((used)) static const char *FUNC12(struct dentry *dentry,
				     struct inode *inode,
				     struct delayed_call *done)
{
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	struct p9_wstat *st;
	char *res;

	if (!dentry)
		return FUNC1(-ECHILD);

	v9ses = FUNC9(dentry);
	fid = FUNC10(dentry);
	FUNC5(P9_DEBUG_VFS, "%pd\n", dentry);

	if (FUNC2(fid))
		return FUNC0(fid);

	if (!FUNC11(v9ses))
		return FUNC1(-EBADF);

	st = FUNC4(fid);
	if (FUNC2(st))
		return FUNC0(st);

	if (!(st->mode & P9_DMSYMLINK)) {
		FUNC6(st);
		FUNC3(st);
		return FUNC1(-EINVAL);
	}
	res = st->extension;
	st->extension = NULL;
	if (FUNC8(res) >= PATH_MAX)
		res[PATH_MAX - 1] = '\0';

	FUNC6(st);
	FUNC3(st);
	FUNC7(done, kfree_link, res);
	return res;
}