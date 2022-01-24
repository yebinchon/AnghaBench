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
typedef  scalar_t__ u64 ;
struct btrfs_space_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  bytes_readonly; } ;
struct TYPE_2__ {scalar_t__ offset; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  ro_list; int /*<<< orphan*/  item; scalar_t__ bytes_super; scalar_t__ pinned; scalar_t__ reserved; TYPE_1__ key; int /*<<< orphan*/  ro; struct btrfs_space_info* space_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct btrfs_block_group_cache *cache)
{
	struct btrfs_space_info *sinfo = cache->space_info;
	u64 num_bytes;

	FUNC0(!cache->ro);

	FUNC3(&sinfo->lock);
	FUNC3(&cache->lock);
	if (!--cache->ro) {
		num_bytes = cache->key.offset - cache->reserved -
			    cache->pinned - cache->bytes_super -
			    FUNC1(&cache->item);
		sinfo->bytes_readonly -= num_bytes;
		FUNC2(&cache->ro_list);
	}
	FUNC4(&cache->lock);
	FUNC4(&sinfo->lock);
}