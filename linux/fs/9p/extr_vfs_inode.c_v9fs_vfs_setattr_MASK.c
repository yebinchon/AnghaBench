#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct v9fs_session_info {int dummy; } ;
struct p9_wstat {scalar_t__ length; int /*<<< orphan*/  n_gid; int /*<<< orphan*/  n_uid; int /*<<< orphan*/  atime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  mode; } ;
struct p9_fid {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {int /*<<< orphan*/  tv_sec; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; TYPE_2__ ia_atime; TYPE_1__ ia_mtime; int /*<<< orphan*/  ia_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 TYPE_3__* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (struct p9_fid*,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct iattr*) ; 
 int FUNC10 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct p9_wstat*) ; 
 struct v9fs_session_info* FUNC14 (struct dentry*) ; 
 struct p9_fid* FUNC15 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (struct v9fs_session_info*) ; 

__attribute__((used)) static int FUNC18(struct dentry *dentry, struct iattr *iattr)
{
	int retval;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	struct p9_wstat wstat;

	FUNC8(P9_DEBUG_VFS, "\n");
	retval = FUNC10(dentry, iattr);
	if (retval)
		return retval;

	retval = -EPERM;
	v9ses = FUNC14(dentry);
	fid = FUNC15(dentry);
	if(FUNC0(fid))
		return FUNC1(fid);

	FUNC13(&wstat);
	if (iattr->ia_valid & ATTR_MODE)
		wstat.mode = FUNC12(v9ses, iattr->ia_mode);

	if (iattr->ia_valid & ATTR_MTIME)
		wstat.mtime = iattr->ia_mtime.tv_sec;

	if (iattr->ia_valid & ATTR_ATIME)
		wstat.atime = iattr->ia_atime.tv_sec;

	if (iattr->ia_valid & ATTR_SIZE)
		wstat.length = iattr->ia_size;

	if (FUNC17(v9ses)) {
		if (iattr->ia_valid & ATTR_UID)
			wstat.n_uid = iattr->ia_uid;

		if (iattr->ia_valid & ATTR_GID)
			wstat.n_gid = iattr->ia_gid;
	}

	/* Write all dirty data */
	if (FUNC3(dentry))
		FUNC4(FUNC2(dentry)->i_mapping);

	retval = FUNC7(fid, &wstat);
	if (retval < 0)
		return retval;

	if ((iattr->ia_valid & ATTR_SIZE) &&
	    iattr->ia_size != FUNC5(FUNC2(dentry)))
		FUNC11(FUNC2(dentry), iattr->ia_size);

	FUNC16(FUNC2(dentry));

	FUNC9(FUNC2(dentry), iattr);
	FUNC6(FUNC2(dentry));
	return 0;
}