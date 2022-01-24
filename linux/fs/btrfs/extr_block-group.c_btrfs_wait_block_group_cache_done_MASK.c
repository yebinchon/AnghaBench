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
struct btrfs_caching_control {int /*<<< orphan*/  wait; } ;
struct btrfs_block_group_cache {scalar_t__ cached; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_ERROR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*) ; 
 struct btrfs_caching_control* FUNC1 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_caching_control*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct btrfs_block_group_cache *cache)
{
	struct btrfs_caching_control *caching_ctl;
	int ret = 0;

	caching_ctl = FUNC1(cache);
	if (!caching_ctl)
		return (cache->cached == BTRFS_CACHE_ERROR) ? -EIO : 0;

	FUNC3(caching_ctl->wait, FUNC0(cache));
	if (cache->cached == BTRFS_CACHE_ERROR)
		ret = -EIO;
	FUNC2(caching_ctl);
	return ret;
}