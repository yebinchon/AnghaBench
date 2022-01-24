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
struct p9_iattr_dotl {scalar_t__ size; int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  atime_nsec; int /*<<< orphan*/  atime_sec; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  valid; } ;
struct p9_fid {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; TYPE_2__ ia_mtime; TYPE_1__ ia_atime; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct p9_fid*,struct p9_iattr_dotl*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct iattr*) ; 
 int FUNC10 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__) ; 
 int FUNC12 (struct inode*,struct p9_fid*) ; 
 struct p9_fid* FUNC13 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int FUNC16(struct dentry *dentry, struct iattr *iattr)
{
	int retval;
	struct p9_fid *fid;
	struct p9_iattr_dotl p9attr;
	struct inode *inode = FUNC3(dentry);

	FUNC8(P9_DEBUG_VFS, "\n");

	retval = FUNC10(dentry, iattr);
	if (retval)
		return retval;

	p9attr.valid = FUNC15(iattr->ia_valid);
	p9attr.mode = iattr->ia_mode;
	p9attr.uid = iattr->ia_uid;
	p9attr.gid = iattr->ia_gid;
	p9attr.size = iattr->ia_size;
	p9attr.atime_sec = iattr->ia_atime.tv_sec;
	p9attr.atime_nsec = iattr->ia_atime.tv_nsec;
	p9attr.mtime_sec = iattr->ia_mtime.tv_sec;
	p9attr.mtime_nsec = iattr->ia_mtime.tv_nsec;

	fid = FUNC13(dentry);
	if (FUNC0(fid))
		return FUNC1(fid);

	/* Write all dirty data */
	if (FUNC2(inode->i_mode))
		FUNC4(inode->i_mapping);

	retval = FUNC7(fid, &p9attr);
	if (retval < 0)
		return retval;

	if ((iattr->ia_valid & ATTR_SIZE) &&
	    iattr->ia_size != FUNC5(inode))
		FUNC11(inode, iattr->ia_size);

	FUNC14(inode);
	FUNC9(inode, iattr);
	FUNC6(inode);
	if (iattr->ia_valid & ATTR_MODE) {
		/* We also want to update ACL when we update mode bits */
		retval = FUNC12(inode, fid);
		if (retval < 0)
			return retval;
	}
	return 0;
}