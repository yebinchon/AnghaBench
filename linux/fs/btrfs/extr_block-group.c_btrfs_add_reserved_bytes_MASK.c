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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_space_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  bytes_reserved; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  delalloc_bytes; int /*<<< orphan*/  fs_info; int /*<<< orphan*/  reserved; scalar_t__ ro; struct btrfs_space_info* space_info; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct btrfs_space_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct btrfs_block_group_cache *cache,
			     u64 ram_bytes, u64 num_bytes, int delalloc)
{
	struct btrfs_space_info *space_info = cache->space_info;
	int ret = 0;

	FUNC1(&space_info->lock);
	FUNC1(&cache->lock);
	if (cache->ro) {
		ret = -EAGAIN;
	} else {
		cache->reserved += num_bytes;
		space_info->bytes_reserved += num_bytes;
		FUNC3(cache->fs_info, "space_info",
					      space_info->flags, num_bytes, 1);
		FUNC0(cache->fs_info,
						      space_info, -ram_bytes);
		if (delalloc)
			cache->delalloc_bytes += num_bytes;
	}
	FUNC2(&cache->lock);
	FUNC2(&space_info->lock);
	return ret;
}