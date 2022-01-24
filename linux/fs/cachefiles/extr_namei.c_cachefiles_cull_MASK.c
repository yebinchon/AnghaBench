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
struct dentry {int dummy; } ;
struct cachefiles_cache {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_WAS_CULLED ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct cachefiles_cache*,int /*<<< orphan*/ *,struct dentry*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC6 (struct cachefiles_cache*,struct dentry*,char*) ; 
 int FUNC7 (struct cachefiles_cache*,struct dentry*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

int FUNC13(struct cachefiles_cache *cache, struct dentry *dir,
		    char *filename)
{
	struct dentry *victim;
	int ret;

	FUNC3(",%pd/,%s", dir, filename);

	victim = FUNC6(cache, dir, filename);
	if (FUNC0(victim))
		return FUNC1(victim);

	FUNC2("victim -> %p %s",
	       victim, FUNC8(victim) ? "positive" : "negative");

	/* okay... the victim is not being used so we can cull it
	 * - start by marking it as stale
	 */
	FUNC2("victim is cullable");

	ret = FUNC7(cache, victim);
	if (ret < 0)
		goto error_unlock;

	/*  actually remove the victim (drops the dir mutex) */
	FUNC2("bury");

	ret = FUNC5(cache, NULL, dir, victim, false,
				     FSCACHE_OBJECT_WAS_CULLED);
	if (ret < 0)
		goto error;

	FUNC10(victim);
	FUNC4(" = 0");
	return 0;

error_unlock:
	FUNC11(FUNC9(dir));
error:
	FUNC10(victim);
	if (ret == -ENOENT) {
		/* file or dir now absent - probably retired by netfs */
		FUNC4(" = -ESTALE [absent]");
		return -ESTALE;
	}

	if (ret != -ENOMEM) {
		FUNC12("Internal error: %d\n", ret);
		ret = -EIO;
	}

	FUNC4(" = %d", ret);
	return ret;
}