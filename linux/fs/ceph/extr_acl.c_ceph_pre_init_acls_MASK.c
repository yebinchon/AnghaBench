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
typedef  int /*<<< orphan*/  umode_t ;
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int dummy; } ;
struct ceph_pagelist {int dummy; } ;
struct ceph_acl_sec_ctx {struct ceph_pagelist* pagelist; struct posix_acl* default_acl; struct posix_acl* acl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_ACCESS ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_DEFAULT ; 
 struct ceph_pagelist* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_pagelist*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_pagelist*,size_t) ; 
 int FUNC3 (struct ceph_pagelist*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_pagelist*) ; 
 int FUNC5 (struct ceph_pagelist*,size_t) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t,size_t) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**) ; 
 int FUNC10 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct posix_acl*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct posix_acl*,void*,size_t) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 size_t FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct inode *dir, umode_t *mode,
		       struct ceph_acl_sec_ctx *as_ctx)
{
	struct posix_acl *acl, *default_acl;
	size_t val_size1 = 0, val_size2 = 0;
	struct ceph_pagelist *pagelist = NULL;
	void *tmp_buf = NULL;
	int err;

	err = FUNC9(dir, mode, &default_acl, &acl);
	if (err)
		return err;

	if (acl) {
		err = FUNC10(acl, mode);
		if (err < 0)
			goto out_err;
		if (err == 0) {
			FUNC11(acl);
			acl = NULL;
		}
	}

	if (!default_acl && !acl)
		return 0;

	if (acl)
		val_size1 = FUNC13(acl->a_count);
	if (default_acl)
		val_size2 = FUNC13(default_acl->a_count);

	err = -ENOMEM;
	tmp_buf = FUNC7(FUNC8(val_size1, val_size2), GFP_KERNEL);
	if (!tmp_buf)
		goto out_err;
	pagelist = FUNC0(GFP_KERNEL);
	if (!pagelist)
		goto out_err;

	err = FUNC5(pagelist, PAGE_SIZE);
	if (err)
		goto out_err;

	FUNC2(pagelist, acl && default_acl ? 2 : 1);

	if (acl) {
		size_t len = FUNC14(XATTR_NAME_POSIX_ACL_ACCESS);
		err = FUNC5(pagelist, len + val_size1 + 8);
		if (err)
			goto out_err;
		FUNC3(pagelist, XATTR_NAME_POSIX_ACL_ACCESS,
					    len);
		err = FUNC12(&init_user_ns, acl,
					 tmp_buf, val_size1);
		if (err < 0)
			goto out_err;
		FUNC2(pagelist, val_size1);
		FUNC1(pagelist, tmp_buf, val_size1);
	}
	if (default_acl) {
		size_t len = FUNC14(XATTR_NAME_POSIX_ACL_DEFAULT);
		err = FUNC5(pagelist, len + val_size2 + 8);
		if (err)
			goto out_err;
		err = FUNC3(pagelist,
						  XATTR_NAME_POSIX_ACL_DEFAULT, len);
		err = FUNC12(&init_user_ns, default_acl,
					 tmp_buf, val_size2);
		if (err < 0)
			goto out_err;
		FUNC2(pagelist, val_size2);
		FUNC1(pagelist, tmp_buf, val_size2);
	}

	FUNC6(tmp_buf);

	as_ctx->acl = acl;
	as_ctx->default_acl = default_acl;
	as_ctx->pagelist = pagelist;
	return 0;

out_err:
	FUNC11(acl);
	FUNC11(default_acl);
	FUNC6(tmp_buf);
	if (pagelist)
		FUNC4(pagelist);
	return err;
}