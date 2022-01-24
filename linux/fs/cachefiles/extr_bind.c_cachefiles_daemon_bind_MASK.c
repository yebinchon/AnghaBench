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
struct cachefiles_cache {scalar_t__ frun_percent; scalar_t__ fcull_percent; scalar_t__ fstop_percent; scalar_t__ brun_percent; scalar_t__ bcull_percent; scalar_t__ bstop_percent; scalar_t__ tag; int /*<<< orphan*/  flags; int /*<<< orphan*/  rootdirname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CACHEFILES_READY ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char*) ; 
 int FUNC2 (struct cachefiles_cache*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct cachefiles_cache *cache, char *args)
{
	FUNC1("{%u,%u,%u,%u,%u,%u},%s",
	       cache->frun_percent,
	       cache->fcull_percent,
	       cache->fstop_percent,
	       cache->brun_percent,
	       cache->bcull_percent,
	       cache->bstop_percent,
	       args);

	/* start by checking things over */
	FUNC0(cache->fstop_percent >= 0 &&
	       cache->fstop_percent < cache->fcull_percent &&
	       cache->fcull_percent < cache->frun_percent &&
	       cache->frun_percent  < 100);

	FUNC0(cache->bstop_percent >= 0 &&
	       cache->bstop_percent < cache->bcull_percent &&
	       cache->bcull_percent < cache->brun_percent &&
	       cache->brun_percent  < 100);

	if (*args) {
		FUNC4("'bind' command doesn't take an argument\n");
		return -EINVAL;
	}

	if (!cache->rootdirname) {
		FUNC4("No cache directory specified\n");
		return -EINVAL;
	}

	/* don't permit already bound caches to be re-bound */
	if (FUNC5(CACHEFILES_READY, &cache->flags)) {
		FUNC4("Cache already bound\n");
		return -EBUSY;
	}

	/* make sure we have copies of the tag and dirname strings */
	if (!cache->tag) {
		/* the tag string is released by the fops->release()
		 * function, so we don't release it on error here */
		cache->tag = FUNC3("CacheFiles", GFP_KERNEL);
		if (!cache->tag)
			return -ENOMEM;
	}

	/* add the cache */
	return FUNC2(cache);
}