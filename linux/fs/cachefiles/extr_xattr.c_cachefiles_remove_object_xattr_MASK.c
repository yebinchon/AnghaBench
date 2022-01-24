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
struct dentry {int dummy; } ;
struct cachefiles_cache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cachefiles_cache*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cachefiles_xattr_cache ; 
 TYPE_1__* FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ ) ; 

int FUNC4(struct cachefiles_cache *cache,
				   struct dentry *dentry)
{
	int ret;

	ret = FUNC3(dentry, cachefiles_xattr_cache);
	if (ret < 0) {
		if (ret == -ENOENT || ret == -ENODATA)
			ret = 0;
		else if (ret != -ENOMEM)
			FUNC1(cache,
					    "Can't remove xattr from %lu"
					    " (error %d)",
					    FUNC2(dentry)->i_ino, -ret);
	}

	FUNC0(" = %d", ret);
	return ret;
}