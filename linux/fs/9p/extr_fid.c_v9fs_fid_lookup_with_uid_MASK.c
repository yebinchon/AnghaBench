#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v9fs_session_info {int flags; unsigned char* uname; int /*<<< orphan*/  rename_sem; int /*<<< orphan*/  aname; int /*<<< orphan*/  clnt; } ;
struct p9_fid {int dummy; } ;
struct TYPE_3__ {unsigned char const* name; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_2__* d_sb; TYPE_1__ d_name; struct dentry* d_parent; } ;
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_4__ {struct dentry* s_root; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 struct p9_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_MAXWELEM ; 
 int V9FS_ACCESS_MASK ; 
 int V9FS_ACCESS_SINGLE ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct p9_fid*) ; 
 int FUNC3 (struct v9fs_session_info*,struct dentry*,unsigned char const***) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const**) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_fid*) ; 
 struct p9_fid* FUNC10 (struct p9_fid*,int,unsigned char const**,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct v9fs_session_info* FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,struct p9_fid*) ; 
 struct p9_fid* FUNC16 (struct dentry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (struct v9fs_session_info*) ; 
 scalar_t__ FUNC18 (struct v9fs_session_info*) ; 

__attribute__((used)) static struct p9_fid *FUNC19(struct dentry *dentry,
					       kuid_t uid, int any)
{
	struct dentry *ds;
	const unsigned char **wnames, *uname;
	int i, n, l, clone, access;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid, *old_fid = NULL;

	v9ses = FUNC14(dentry);
	access = v9ses->flags & V9FS_ACCESS_MASK;
	fid = FUNC16(dentry, uid, any);
	if (fid)
		return fid;
	/*
	 * we don't have a matching fid. To do a TWALK we need
	 * parent fid. We need to prevent rename when we want to
	 * look at the parent.
	 */
	FUNC5(&v9ses->rename_sem);
	ds = dentry->d_parent;
	fid = FUNC16(ds, uid, any);
	if (fid) {
		/* Found the parent fid do a lookup with that */
		fid = FUNC10(fid, 1, &dentry->d_name.name, 1);
		goto fid_out;
	}
	FUNC13(&v9ses->rename_sem);

	/* start from the root and try to do a lookup */
	fid = FUNC16(dentry->d_sb->s_root, uid, any);
	if (!fid) {
		/* the user is not attached to the fs yet */
		if (access == V9FS_ACCESS_SINGLE)
			return FUNC0(-EPERM);

		if (FUNC18(v9ses) || FUNC17(v9ses))
				uname = NULL;
		else
			uname = v9ses->uname;

		fid = FUNC8(v9ses->clnt, NULL, uname, uid,
				       v9ses->aname);
		if (FUNC1(fid))
			return fid;

		FUNC15(dentry->d_sb->s_root, fid);
	}
	/* If we are root ourself just return that */
	if (dentry->d_sb->s_root == dentry)
		return fid;
	/*
	 * Do a multipath walk with attached root.
	 * When walking parent we need to make sure we
	 * don't have a parallel rename happening
	 */
	FUNC5(&v9ses->rename_sem);
	n  = FUNC3(v9ses, dentry, &wnames);
	if (n < 0) {
		fid = FUNC0(n);
		goto err_out;
	}
	clone = 1;
	i = 0;
	while (i < n) {
		l = FUNC7(n - i, P9_MAXWELEM);
		/*
		 * We need to hold rename lock when doing a multipath
		 * walk to ensure none of the patch component change
		 */
		fid = FUNC10(fid, l, &wnames[i], clone);
		if (FUNC1(fid)) {
			if (old_fid) {
				/*
				 * If we fail, clunk fid which are mapping
				 * to path component and not the last component
				 * of the path.
				 */
				FUNC9(old_fid);
			}
			FUNC6(wnames);
			goto err_out;
		}
		old_fid = fid;
		i += l;
		clone = 0;
	}
	FUNC6(wnames);
fid_out:
	if (!FUNC1(fid)) {
		FUNC11(&dentry->d_lock);
		if (FUNC4(dentry)) {
			FUNC12(&dentry->d_lock);
			FUNC9(fid);
			fid = FUNC0(-ENOENT);
		} else {
			FUNC2(dentry, fid);
			FUNC12(&dentry->d_lock);
		}
	}
err_out:
	FUNC13(&v9ses->rename_sem);
	return fid;
}