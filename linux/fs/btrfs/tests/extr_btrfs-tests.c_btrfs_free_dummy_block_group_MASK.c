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
struct btrfs_block_group_cache {struct btrfs_block_group_cache* free_space_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_group_cache*) ; 

void FUNC2(struct btrfs_block_group_cache *cache)
{
	if (!cache)
		return;
	FUNC0(cache->free_space_ctl);
	FUNC1(cache->free_space_ctl);
	FUNC1(cache);
}