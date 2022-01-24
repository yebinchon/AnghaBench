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
typedef  int u64 ;
typedef  int u32 ;
struct btrfs_block_group_cache {int /*<<< orphan*/  free_space_ctl; } ;

/* Variables and functions */
 int BITS_PER_BITMAP ; 
 int SZ_1M ; 
 int SZ_2M ; 
 int SZ_4M ; 
 int SZ_512K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_block_group_cache*,int,int) ; 
 int FUNC2 (struct btrfs_block_group_cache*,int,int,int) ; 
 scalar_t__ FUNC3 (struct btrfs_block_group_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct btrfs_block_group_cache *cache,
				    u32 sectorsize)
{
	u64 bitmap_offset = (u64)(BITS_PER_BITMAP * sectorsize);
	int ret;

	FUNC5("running bitmap and extent tests");

	/*
	 * First let's do something simple, an extent at the same offset as the
	 * bitmap, but the free space completely in the extent and then
	 * completely in the bitmap.
	 */
	ret = FUNC2(cache, SZ_4M, SZ_1M, 1);
	if (ret) {
		FUNC4("couldn't create bitmap entry %d", ret);
		return ret;
	}

	ret = FUNC2(cache, 0, SZ_1M, 0);
	if (ret) {
		FUNC4("couldn't add extent entry %d", ret);
		return ret;
	}

	ret = FUNC1(cache, 0, SZ_1M);
	if (ret) {
		FUNC4("couldn't remove extent entry %d", ret);
		return ret;
	}

	if (FUNC3(cache, 0, SZ_1M)) {
		FUNC4("left remnants after our remove");
		return -1;
	}

	/* Now to add back the extent entry and remove from the bitmap */
	ret = FUNC2(cache, 0, SZ_1M, 0);
	if (ret) {
		FUNC4("couldn't re-add extent entry %d", ret);
		return ret;
	}

	ret = FUNC1(cache, SZ_4M, SZ_1M);
	if (ret) {
		FUNC4("couldn't remove from bitmap %d", ret);
		return ret;
	}

	if (FUNC3(cache, SZ_4M, SZ_1M)) {
		FUNC4("left remnants in the bitmap");
		return -1;
	}

	/*
	 * Ok so a little more evil, extent entry and bitmap at the same offset,
	 * removing an overlapping chunk.
	 */
	ret = FUNC2(cache, SZ_1M, SZ_4M, 1);
	if (ret) {
		FUNC4("couldn't add to a bitmap %d", ret);
		return ret;
	}

	ret = FUNC1(cache, SZ_512K, 3 * SZ_1M);
	if (ret) {
		FUNC4("couldn't remove overlapping space %d", ret);
		return ret;
	}

	if (FUNC3(cache, SZ_512K, 3 * SZ_1M)) {
		FUNC4("left over pieces after removing overlapping");
		return -1;
	}

	FUNC0(cache->free_space_ctl);

	/* Now with the extent entry offset into the bitmap */
	ret = FUNC2(cache, SZ_4M, SZ_4M, 1);
	if (ret) {
		FUNC4("couldn't add space to the bitmap %d", ret);
		return ret;
	}

	ret = FUNC2(cache, SZ_2M, SZ_2M, 0);
	if (ret) {
		FUNC4("couldn't add extent to the cache %d", ret);
		return ret;
	}

	ret = FUNC1(cache, 3 * SZ_1M, SZ_4M);
	if (ret) {
		FUNC4("problem removing overlapping space %d", ret);
		return ret;
	}

	if (FUNC3(cache, 3 * SZ_1M, SZ_4M)) {
		FUNC4("left something behind when removing space");
		return -1;
	}

	/*
	 * This has blown up in the past, the extent entry starts before the
	 * bitmap entry, but we're trying to remove an offset that falls
	 * completely within the bitmap range and is in both the extent entry
	 * and the bitmap entry, looks like this
	 *
	 *   [ extent ]
	 *      [ bitmap ]
	 *        [ del ]
	 */
	FUNC0(cache->free_space_ctl);
	ret = FUNC2(cache, bitmap_offset + SZ_4M, SZ_4M, 1);
	if (ret) {
		FUNC4("couldn't add bitmap %d", ret);
		return ret;
	}

	ret = FUNC2(cache, bitmap_offset - SZ_1M,
					5 * SZ_1M, 0);
	if (ret) {
		FUNC4("couldn't add extent entry %d", ret);
		return ret;
	}

	ret = FUNC1(cache, bitmap_offset + SZ_1M, 5 * SZ_1M);
	if (ret) {
		FUNC4("failed to free our space %d", ret);
		return ret;
	}

	if (FUNC3(cache, bitmap_offset + SZ_1M, 5 * SZ_1M)) {
		FUNC4("left stuff over");
		return -1;
	}

	FUNC0(cache->free_space_ctl);

	/*
	 * This blew up before, we have part of the free space in a bitmap and
	 * then the entirety of the rest of the space in an extent.  This used
	 * to return -EAGAIN back from btrfs_remove_extent, make sure this
	 * doesn't happen.
	 */
	ret = FUNC2(cache, SZ_1M, SZ_2M, 1);
	if (ret) {
		FUNC4("couldn't add bitmap entry %d", ret);
		return ret;
	}

	ret = FUNC2(cache, 3 * SZ_1M, SZ_1M, 0);
	if (ret) {
		FUNC4("couldn't add extent entry %d", ret);
		return ret;
	}

	ret = FUNC1(cache, SZ_1M, 3 * SZ_1M);
	if (ret) {
		FUNC4("error removing bitmap and extent overlapping %d", ret);
		return ret;
	}

	FUNC0(cache->free_space_ctl);
	return 0;
}