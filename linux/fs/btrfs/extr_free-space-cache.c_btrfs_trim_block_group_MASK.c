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
struct btrfs_block_group_cache {int /*<<< orphan*/  lock; scalar_t__ removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC6(struct btrfs_block_group_cache *block_group,
			   u64 *trimmed, u64 start, u64 end, u64 minlen)
{
	int ret;

	*trimmed = 0;

	FUNC2(&block_group->lock);
	if (block_group->removed) {
		FUNC3(&block_group->lock);
		return 0;
	}
	FUNC0(block_group);
	FUNC3(&block_group->lock);

	ret = FUNC5(block_group, trimmed, start, end, minlen);
	if (ret)
		goto out;

	ret = FUNC4(block_group, trimmed, start, end, minlen);
out:
	FUNC1(block_group);
	return ret;
}