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
struct path {int /*<<< orphan*/  dentry; TYPE_1__* mnt; } ;
struct kstatfs {int f_bavail; unsigned int f_ffree; } ;
struct cachefiles_cache {int bshift; scalar_t__ fstop; unsigned int bstop; scalar_t__ fcull; unsigned int bcull; scalar_t__ frun; unsigned int brun; int /*<<< orphan*/  flags; TYPE_1__* mnt; } ;
typedef  int /*<<< orphan*/  stats ;
struct TYPE_2__ {int /*<<< orphan*/  mnt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHEFILES_CULLING ; 
 int EIO ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cachefiles_cache*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cachefiles_cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct kstatfs*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct path*,struct kstatfs*) ; 

int FUNC9(struct cachefiles_cache *cache,
			 unsigned fnr, unsigned bnr)
{
	struct kstatfs stats;
	struct path path = {
		.mnt	= cache->mnt,
		.dentry	= cache->mnt->mnt_root,
	};
	int ret;

	//_enter("{%llu,%llu,%llu,%llu,%llu,%llu},%u,%u",
	//       (unsigned long long) cache->frun,
	//       (unsigned long long) cache->fcull,
	//       (unsigned long long) cache->fstop,
	//       (unsigned long long) cache->brun,
	//       (unsigned long long) cache->bcull,
	//       (unsigned long long) cache->bstop,
	//       fnr, bnr);

	/* find out how many pages of blockdev are available */
	FUNC4(&stats, 0, sizeof(stats));

	ret = FUNC8(&path, &stats);
	if (ret < 0) {
		if (ret == -EIO)
			FUNC2(cache, "statfs failed");
		FUNC1(" = %d", ret);
		return ret;
	}

	stats.f_bavail >>= cache->bshift;

	//_debug("avail %llu,%llu",
	//       (unsigned long long) stats.f_ffree,
	//       (unsigned long long) stats.f_bavail);

	/* see if there is sufficient space */
	if (stats.f_ffree > fnr)
		stats.f_ffree -= fnr;
	else
		stats.f_ffree = 0;

	if (stats.f_bavail > bnr)
		stats.f_bavail -= bnr;
	else
		stats.f_bavail = 0;

	ret = -ENOBUFS;
	if (stats.f_ffree < cache->fstop ||
	    stats.f_bavail < cache->bstop)
		goto begin_cull;

	ret = 0;
	if (stats.f_ffree < cache->fcull ||
	    stats.f_bavail < cache->bcull)
		goto begin_cull;

	if (FUNC7(CACHEFILES_CULLING, &cache->flags) &&
	    stats.f_ffree >= cache->frun &&
	    stats.f_bavail >= cache->brun &&
	    FUNC5(CACHEFILES_CULLING, &cache->flags)
	    ) {
		FUNC0("cease culling");
		FUNC3(cache);
	}

	//_leave(" = 0");
	return 0;

begin_cull:
	if (!FUNC6(CACHEFILES_CULLING, &cache->flags)) {
		FUNC0("### CULL CACHE ###");
		FUNC3(cache);
	}

	FUNC1(" = %d", ret);
	return ret;
}