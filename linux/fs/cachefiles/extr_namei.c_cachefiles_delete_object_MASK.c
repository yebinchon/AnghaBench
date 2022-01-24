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
struct dentry {struct dentry* d_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  debug_id; } ;
struct cachefiles_object {struct dentry* dentry; TYPE_1__ fscache; } ;
struct cachefiles_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_KILLED_BY_CACHE ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_WAS_RETIRED ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct cachefiles_cache*,struct cachefiles_object*,struct dentry*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct cachefiles_cache *cache,
			     struct cachefiles_object *object)
{
	struct dentry *dir;
	int ret;

	FUNC2(",OBJ%x{%p}", object->fscache.debug_id, object->dentry);

	FUNC0(object->dentry);
	FUNC0(FUNC5(object->dentry));
	FUNC0(object->dentry->d_parent);

	dir = FUNC7(object->dentry);

	FUNC9(FUNC6(dir), I_MUTEX_PARENT);

	if (FUNC11(FSCACHE_OBJECT_KILLED_BY_CACHE, &object->fscache.flags)) {
		/* object allocation for the same key preemptively deleted this
		 * object's file so that it could create its own file */
		FUNC1("object preemptively buried");
		FUNC10(FUNC6(dir));
		ret = 0;
	} else {
		/* we need to check that our parent is _still_ our parent - it
		 * may have been renamed */
		if (dir == object->dentry->d_parent) {
			ret = FUNC4(cache, object, dir,
						     object->dentry, false,
						     FSCACHE_OBJECT_WAS_RETIRED);
		} else {
			/* it got moved, presumably by cachefilesd culling it,
			 * so it's no longer in the key path and we can ignore
			 * it */
			FUNC10(FUNC6(dir));
			ret = 0;
		}
	}

	FUNC8(dir);
	FUNC3(" = %d", ret);
	return ret;
}