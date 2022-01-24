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
typedef  union fscrypt_policy {int dummy; } fscrypt_policy ;
typedef  union fscrypt_context {int dummy; } fscrypt_context ;
struct inode {TYPE_2__* i_sb; int /*<<< orphan*/  i_crypt_info; } ;
struct fscrypt_info {union fscrypt_policy ci_policy; } ;
typedef  int /*<<< orphan*/  ctx ;
struct TYPE_4__ {TYPE_1__* s_cop; } ;
struct TYPE_3__ {int (* get_context ) (struct inode*,union fscrypt_context*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct fscrypt_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (union fscrypt_policy*,union fscrypt_context*,int) ; 
 int FUNC3 (struct inode*,union fscrypt_context*,int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, union fscrypt_policy *policy)
{
	const struct fscrypt_info *ci;
	union fscrypt_context ctx;
	int ret;

	ci = FUNC1(inode->i_crypt_info);
	if (ci) {
		/* key available, use the cached policy */
		*policy = ci->ci_policy;
		return 0;
	}

	if (!FUNC0(inode))
		return -ENODATA;

	ret = inode->i_sb->s_cop->get_context(inode, &ctx, sizeof(ctx));
	if (ret < 0)
		return (ret == -ERANGE) ? -EINVAL : ret;

	return FUNC2(policy, &ctx, ret);
}