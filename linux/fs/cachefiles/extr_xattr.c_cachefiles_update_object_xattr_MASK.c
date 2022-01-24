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
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_AUX_UPDATED ; 
 int /*<<< orphan*/  XATTR_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cachefiles_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cachefiles_object*,char*,int) ; 
 int /*<<< orphan*/  cachefiles_xattr_cache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct cachefiles_object *object,
				   struct cachefiles_xattr *auxdata)
{
	struct dentry *dentry = object->dentry;
	int ret;

	if (!dentry)
		return -ESTALE;

	FUNC1("%p,#%d", object, auxdata->len);

	/* attempt to install the cache metadata directly */
	FUNC0("SET #%u", auxdata->len);

	FUNC4(FSCACHE_COOKIE_AUX_UPDATED, &object->fscache.cookie->flags);
	ret = FUNC5(dentry, cachefiles_xattr_cache,
			   &auxdata->type, auxdata->len,
			   XATTR_REPLACE);
	if (ret < 0 && ret != -ENOMEM)
		FUNC3(
			object,
			"Failed to update xattr with error %d", ret);

	FUNC2(" = %d", ret);
	return ret;
}