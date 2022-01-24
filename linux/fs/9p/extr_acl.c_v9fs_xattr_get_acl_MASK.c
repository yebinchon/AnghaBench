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
struct xattr_handler {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct v9fs_session_info {int flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 int V9FS_ACCESS_CLIENT ; 
 int V9FS_ACCESS_MASK ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct posix_acl*,void*,size_t) ; 
 struct v9fs_session_info* FUNC4 (struct dentry*) ; 
 struct posix_acl* FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dentry*,int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int FUNC7(const struct xattr_handler *handler,
			      struct dentry *dentry, struct inode *inode,
			      const char *name, void *buffer, size_t size)
{
	struct v9fs_session_info *v9ses;
	struct posix_acl *acl;
	int error;

	v9ses = FUNC4(dentry);
	/*
	 * We allow set/get/list of acl when access=client is not specified
	 */
	if ((v9ses->flags & V9FS_ACCESS_MASK) != V9FS_ACCESS_CLIENT)
		return FUNC6(dentry, handler->name, buffer, size);

	acl = FUNC5(inode, handler->flags);
	if (FUNC0(acl))
		return FUNC1(acl);
	if (acl == NULL)
		return -ENODATA;
	error = FUNC3(&init_user_ns, acl, buffer, size);
	FUNC2(acl);

	return error;
}