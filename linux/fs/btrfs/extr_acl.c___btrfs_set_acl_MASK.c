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
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct btrfs_trans_handle {int dummy; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int FUNC1 (struct btrfs_trans_handle*,struct inode*,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,struct posix_acl*,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC10(struct btrfs_trans_handle *trans,
			 struct inode *inode, struct posix_acl *acl, int type)
{
	int ret, size = 0;
	const char *name;
	char *value = NULL;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name = XATTR_NAME_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		if (!FUNC0(inode->i_mode))
			return acl ? -EINVAL : 0;
		name = XATTR_NAME_POSIX_ACL_DEFAULT;
		break;
	default:
		return -EINVAL;
	}

	if (acl) {
		unsigned int nofs_flag;

		size = FUNC8(acl->a_count);
		/*
		 * We're holding a transaction handle, so use a NOFS memory
		 * allocation context to avoid deadlock if reclaim happens.
		 */
		nofs_flag = FUNC6();
		value = FUNC4(size, GFP_KERNEL);
		FUNC5(nofs_flag);
		if (!value) {
			ret = -ENOMEM;
			goto out;
		}

		ret = FUNC7(&init_user_ns, acl, value, size);
		if (ret < 0)
			goto out;
	}

	if (trans)
		ret = FUNC1(trans, inode, name, value, size, 0);
	else
		ret = FUNC2(inode, name, value, size, 0);

out:
	FUNC3(value);

	if (!ret)
		FUNC9(inode, type, acl);

	return ret;
}