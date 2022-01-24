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
struct btrfs_block_group_cache {int /*<<< orphan*/  free_space_ctl; } ;

/* Variables and functions */
 int SZ_1M ; 
 int SZ_2M ; 
 int SZ_4M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_block_group_cache*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct btrfs_block_group_cache*,int,int) ; 
 scalar_t__ FUNC3 (struct btrfs_block_group_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct btrfs_block_group_cache *cache)
{
	int ret = 0;

	FUNC5("running extent only tests");

	/* First just make sure we can remove an entire entry */
	ret = FUNC1(cache, 0, SZ_4M);
	if (ret) {
		FUNC4("error adding initial extents %d", ret);
		return ret;
	}

	ret = FUNC2(cache, 0, SZ_4M);
	if (ret) {
		FUNC4("error removing extent %d", ret);
		return ret;
	}

	if (FUNC3(cache, 0, SZ_4M)) {
		FUNC4("full remove left some lingering space");
		return -1;
	}

	/* Ok edge and middle cases now */
	ret = FUNC1(cache, 0, SZ_4M);
	if (ret) {
		FUNC4("error adding half extent %d", ret);
		return ret;
	}

	ret = FUNC2(cache, 3 * SZ_1M, SZ_1M);
	if (ret) {
		FUNC4("error removing tail end %d", ret);
		return ret;
	}

	ret = FUNC2(cache, 0, SZ_1M);
	if (ret) {
		FUNC4("error removing front end %d", ret);
		return ret;
	}

	ret = FUNC2(cache, SZ_2M, 4096);
	if (ret) {
		FUNC4("error removing middle piece %d", ret);
		return ret;
	}

	if (FUNC3(cache, 0, SZ_1M)) {
		FUNC4("still have space at the front");
		return -1;
	}

	if (FUNC3(cache, SZ_2M, 4096)) {
		FUNC4("still have space in the middle");
		return -1;
	}

	if (FUNC3(cache, 3 * SZ_1M, SZ_1M)) {
		FUNC4("still have space at the end");
		return -1;
	}

	/* Cleanup */
	FUNC0(cache->free_space_ctl);

	return 0;
}