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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENODATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*,char*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct posix_acl *FUNC6(struct p9_fid *fid, char *name)
{
	ssize_t size;
	void *value = NULL;
	struct posix_acl *acl = NULL;

	size = FUNC5(fid, name, NULL, 0);
	if (size > 0) {
		value = FUNC3(size, GFP_NOFS);
		if (!value)
			return FUNC0(-ENOMEM);
		size = FUNC5(fid, name, value, size);
		if (size > 0) {
			acl = FUNC4(&init_user_ns, value, size);
			if (FUNC1(acl))
				goto err_out;
		}
	} else if (size == -ENODATA || size == 0 ||
		   size == -ENOSYS || size == -EOPNOTSUPP) {
		acl = NULL;
	} else
		acl = FUNC0(-EIO);

err_out:
	FUNC2(value);
	return acl;
}