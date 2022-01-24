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
struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct posix_acl*) ; 
 int V9FS_ACCESS_CLIENT ; 
 int V9FS_ACCESS_MASK ; 
 int V9FS_ACL_MASK ; 
 int V9FS_POSIX_ACL ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_ACCESS ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_DEFAULT ; 
 struct posix_acl* FUNC1 (struct p9_fid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 struct v9fs_session_info* FUNC4 (struct inode*) ; 

int FUNC5(struct inode *inode, struct p9_fid *fid)
{
	int retval = 0;
	struct posix_acl *pacl, *dacl;
	struct v9fs_session_info *v9ses;

	v9ses = FUNC4(inode);
	if (((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT) ||
			((v9ses->flags & V9FS_ACL_MASK) != V9FS_POSIX_ACL)) {
		FUNC3(inode, ACL_TYPE_DEFAULT, NULL);
		FUNC3(inode, ACL_TYPE_ACCESS, NULL);
		return 0;
	}
	/* get the default/access acl values and cache them */
	dacl = FUNC1(fid, XATTR_NAME_POSIX_ACL_DEFAULT);
	pacl = FUNC1(fid, XATTR_NAME_POSIX_ACL_ACCESS);

	if (!FUNC0(dacl) && !FUNC0(pacl)) {
		FUNC3(inode, ACL_TYPE_DEFAULT, dacl);
		FUNC3(inode, ACL_TYPE_ACCESS, pacl);
	} else
		retval = -EIO;

	if (!FUNC0(dacl))
		FUNC2(dacl);

	if (!FUNC0(pacl))
		FUNC2(pacl);

	return retval;
}