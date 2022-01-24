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
struct TYPE_2__ {int /*<<< orphan*/  identifier; } ;
struct cachefiles_cache {int /*<<< orphan*/  tag; int /*<<< orphan*/  secctx; int /*<<< orphan*/  rootdirname; int /*<<< orphan*/  mnt; int /*<<< orphan*/  graveyard; TYPE_1__ cache; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHEFILES_READY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct cachefiles_cache *cache)
{
	FUNC0("");

	if (FUNC7(CACHEFILES_READY, &cache->flags)) {
		FUNC6("File cache on %s unregistering\n",
			cache->cache.identifier);

		FUNC3(&cache->cache);
	}

	FUNC2(cache->graveyard);
	FUNC5(cache->mnt);

	FUNC4(cache->rootdirname);
	FUNC4(cache->secctx);
	FUNC4(cache->tag);

	FUNC1("");
}