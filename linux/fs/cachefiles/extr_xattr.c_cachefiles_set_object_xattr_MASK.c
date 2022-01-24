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
struct dentry {int dummy; } ;
struct cachefiles_xattr {int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_1__* cookie; } ;
struct cachefiles_object {TYPE_2__ fscache; struct dentry* dentry; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_AUX_UPDATED ; 
 int /*<<< orphan*/  XATTR_CREATE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cachefiles_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cachefiles_object*,char*,int) ; 
 int /*<<< orphan*/  cachefiles_xattr_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct cachefiles_object *object,
				struct cachefiles_xattr *auxdata)
{
	struct dentry *dentry = object->dentry;
	int ret;

	FUNC0(dentry);

	FUNC2("%p,#%d", object, auxdata->len);

	/* attempt to install the cache metadata directly */
	FUNC1("SET #%u", auxdata->len);

	FUNC5(FSCACHE_COOKIE_AUX_UPDATED, &object->fscache.cookie->flags);
	ret = FUNC6(dentry, cachefiles_xattr_cache,
			   &auxdata->type, auxdata->len,
			   XATTR_CREATE);
	if (ret < 0 && ret != -ENOMEM)
		FUNC4(
			object,
			"Failed to set xattr with error %d", ret);

	FUNC3(" = %d", ret);
	return ret;
}