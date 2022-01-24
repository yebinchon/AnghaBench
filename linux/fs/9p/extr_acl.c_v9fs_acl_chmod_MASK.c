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
struct posix_acl {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct posix_acl**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 struct posix_acl* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct p9_fid*,int /*<<< orphan*/ ,struct posix_acl*) ; 

int FUNC6(struct inode *inode, struct p9_fid *fid)
{
	int retval = 0;
	struct posix_acl *acl;

	if (FUNC0(inode->i_mode))
		return -EOPNOTSUPP;
	acl = FUNC4(inode, ACL_TYPE_ACCESS);
	if (acl) {
		retval = FUNC1(&acl, GFP_KERNEL, inode->i_mode);
		if (retval)
			return retval;
		FUNC3(inode, ACL_TYPE_ACCESS, acl);
		retval = FUNC5(fid, ACL_TYPE_ACCESS, acl);
		FUNC2(acl);
	}
	return retval;
}