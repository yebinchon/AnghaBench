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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct btrfs_trans_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int FUNC0 (struct btrfs_trans_handle*,struct inode*,struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 

int FUNC4(struct btrfs_trans_handle *trans,
		   struct inode *inode, struct inode *dir)
{
	struct posix_acl *default_acl, *acl;
	int ret = 0;

	/* this happens with subvols */
	if (!dir)
		return 0;

	ret = FUNC2(dir, &inode->i_mode, &default_acl, &acl);
	if (ret)
		return ret;

	if (default_acl) {
		ret = FUNC0(trans, inode, default_acl,
				      ACL_TYPE_DEFAULT);
		FUNC3(default_acl);
	}

	if (acl) {
		if (!ret)
			ret = FUNC0(trans, inode, acl,
					      ACL_TYPE_ACCESS);
		FUNC3(acl);
	}

	if (!default_acl && !acl)
		FUNC1(inode);
	return ret;
}