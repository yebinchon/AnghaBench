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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct btrfs_block_group_cache {int /*<<< orphan*/  free_space_ctl; } ;

/* Variables and functions */
 int BITS_PER_BITMAP ; 
 scalar_t__ SZ_1M ; 
 scalar_t__ SZ_2M ; 
 scalar_t__ SZ_4M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct btrfs_block_group_cache *cache,
			u32 sectorsize)
{
	u64 next_bitmap_offset;
	int ret;

	FUNC5("running bitmap only tests");

	ret = FUNC2(cache, 0, SZ_4M, 1);
	if (ret) {
		FUNC4("couldn't create a bitmap entry %d", ret);
		return ret;
	}

	ret = FUNC1(cache, 0, SZ_4M);
	if (ret) {
		FUNC4("error removing bitmap full range %d", ret);
		return ret;
	}

	if (FUNC3(cache, 0, SZ_4M)) {
		FUNC4("left some space in bitmap");
		return -1;
	}

	ret = FUNC2(cache, 0, SZ_4M, 1);
	if (ret) {
		FUNC4("couldn't add to our bitmap entry %d", ret);
		return ret;
	}

	ret = FUNC1(cache, SZ_1M, SZ_2M);
	if (ret) {
		FUNC4("couldn't remove middle chunk %d", ret);
		return ret;
	}

	/*
	 * The first bitmap we have starts at offset 0 so the next one is just
	 * at the end of the first bitmap.
	 */
	next_bitmap_offset = (u64)(BITS_PER_BITMAP * sectorsize);

	/* Test a bit straddling two bitmaps */
	ret = FUNC2(cache, next_bitmap_offset - SZ_2M,
					SZ_4M, 1);
	if (ret) {
		FUNC4("couldn't add space that straddles two bitmaps %d",
				ret);
		return ret;
	}

	ret = FUNC1(cache, next_bitmap_offset - SZ_1M, SZ_2M);
	if (ret) {
		FUNC4("couldn't remove overlapping space %d", ret);
		return ret;
	}

	if (FUNC3(cache, next_bitmap_offset - SZ_1M, SZ_2M)) {
		FUNC4("left some space when removing overlapping");
		return -1;
	}

	FUNC0(cache->free_space_ctl);

	return 0;
}