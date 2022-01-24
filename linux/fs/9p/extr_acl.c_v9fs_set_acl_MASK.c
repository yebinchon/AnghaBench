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
struct p9_fid {int dummy; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct posix_acl*,void*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct p9_fid*,char*,void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct p9_fid *fid, int type, struct posix_acl *acl)
{
	int retval;
	char *name;
	size_t size;
	void *buffer;
	if (!acl)
		return 0;

	/* Set a setxattr request to server */
	size = FUNC4(acl->a_count);
	buffer = FUNC2(size, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;
	retval = FUNC3(&init_user_ns, acl, buffer, size);
	if (retval < 0)
		goto err_free_out;
	switch (type) {
	case ACL_TYPE_ACCESS:
		name = XATTR_NAME_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		name = XATTR_NAME_POSIX_ACL_DEFAULT;
		break;
	default:
		FUNC0();
	}
	retval = FUNC5(fid, name, buffer, size, 0);
err_free_out:
	FUNC1(buffer);
	return retval;
}