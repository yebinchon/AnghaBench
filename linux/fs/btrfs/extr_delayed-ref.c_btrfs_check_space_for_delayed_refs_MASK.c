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
struct btrfs_block_rsv {scalar_t__ reserved; scalar_t__ size; int /*<<< orphan*/  lock; } ;
struct btrfs_fs_info {struct btrfs_block_rsv global_block_rsv; struct btrfs_block_rsv delayed_refs_rsv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct btrfs_fs_info *fs_info)
{
	struct btrfs_block_rsv *delayed_refs_rsv = &fs_info->delayed_refs_rsv;
	struct btrfs_block_rsv *global_rsv = &fs_info->global_block_rsv;
	bool ret = false;
	u64 reserved;

	FUNC0(&global_rsv->lock);
	reserved = global_rsv->reserved;
	FUNC1(&global_rsv->lock);

	/*
	 * Since the global reserve is just kind of magic we don't really want
	 * to rely on it to save our bacon, so if our size is more than the
	 * delayed_refs_rsv and the global rsv then it's time to think about
	 * bailing.
	 */
	FUNC0(&delayed_refs_rsv->lock);
	reserved += delayed_refs_rsv->reserved;
	if (delayed_refs_rsv->size >= reserved)
		ret = true;
	FUNC1(&delayed_refs_rsv->lock);
	return ret;
}