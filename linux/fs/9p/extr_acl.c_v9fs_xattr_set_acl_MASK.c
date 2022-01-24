#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xattr_handler {int flags; int /*<<< orphan*/  name; } ;
struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; TYPE_1__* i_sb; } ;
struct iattr {int /*<<< orphan*/  ia_valid; int /*<<< orphan*/  ia_mode; int /*<<< orphan*/  member_0; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_user_ns; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  ATTR_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct posix_acl*) ; 
 int FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int V9FS_ACCESS_CLIENT ; 
 int V9FS_ACCESS_MASK ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct posix_acl* FUNC6 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct posix_acl*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int,struct posix_acl*) ; 
 struct v9fs_session_info* FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct iattr*) ; 
 int FUNC13 (struct dentry*,int /*<<< orphan*/ ,void const*,size_t,int) ; 

__attribute__((used)) static int FUNC14(const struct xattr_handler *handler,
			      struct dentry *dentry, struct inode *inode,
			      const char *name, const void *value,
			      size_t size, int flags)
{
	int retval;
	struct posix_acl *acl;
	struct v9fs_session_info *v9ses;

	v9ses = FUNC11(dentry);
	/*
	 * set the attribute on the remote. Without even looking at the
	 * xattr value. We leave it to the server to validate
	 */
	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
		return FUNC13(dentry, handler->name, value, size,
				      flags);

	if (FUNC4(inode->i_mode))
		return -EOPNOTSUPP;
	if (!FUNC5(inode))
		return -EPERM;
	if (value) {
		/* update the cached acl value */
		acl = FUNC6(&init_user_ns, value, size);
		if (FUNC1(acl))
			return FUNC2(acl);
		else if (acl) {
			retval = FUNC9(inode->i_sb->s_user_ns, acl);
			if (retval)
				goto err_out;
		}
	} else
		acl = NULL;

	switch (handler->flags) {
	case ACL_TYPE_ACCESS:
		if (acl) {
			struct iattr iattr = { 0 };
			struct posix_acl *old_acl = acl;

			retval = FUNC8(inode, &iattr.ia_mode, &acl);
			if (retval)
				goto err_out;
			if (!acl) {
				/*
				 * ACL can be represented
				 * by the mode bits. So don't
				 * update ACL.
				 */
				FUNC7(old_acl);
				value = NULL;
				size = 0;
			}
			iattr.ia_valid = ATTR_MODE;
			/* FIXME should we update ctime ?
			 * What is the following setxattr update the
			 * mode ?
			 */
			FUNC12(dentry, &iattr);
		}
		break;
	case ACL_TYPE_DEFAULT:
		if (!FUNC3(inode->i_mode)) {
			retval = acl ? -EINVAL : 0;
			goto err_out;
		}
		break;
	default:
		FUNC0();
	}
	retval = FUNC13(dentry, handler->name, value, size, flags);
	if (!retval)
		FUNC10(inode, handler->flags, acl);
err_out:
	FUNC7(acl);
	return retval;
}