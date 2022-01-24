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
struct btrfs_block_group_cache {TYPE_1__* free_space_ctl; } ;
struct TYPE_2__ {int const free_extents; int const total_bitmaps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int const,int const) ; 

__attribute__((used)) static int
FUNC1(const struct btrfs_block_group_cache *cache,
			      const int num_extents,
			      const int num_bitmaps)
{
	if (cache->free_space_ctl->free_extents != num_extents) {
		FUNC0(
		"incorrect # of extent entries in the cache: %d, expected %d",
			 cache->free_space_ctl->free_extents, num_extents);
		return -EINVAL;
	}
	if (cache->free_space_ctl->total_bitmaps != num_bitmaps) {
		FUNC0(
		"incorrect # of extent entries in the cache: %d, expected %d",
			 cache->free_space_ctl->total_bitmaps, num_bitmaps);
		return -EINVAL;
	}
	return 0;
}