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
struct btrfs_block_rsv {int dummy; } ;
struct btrfs_fs_info {struct btrfs_block_rsv delayed_refs_rsv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_fs_info*,struct btrfs_block_rsv*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(struct btrfs_fs_info *fs_info, int nr)
{
	struct btrfs_block_rsv *block_rsv = &fs_info->delayed_refs_rsv;
	u64 num_bytes = FUNC1(fs_info, nr);
	u64 released = 0;

	released = FUNC0(fs_info, block_rsv, num_bytes,
					     NULL);
	if (released)
		FUNC2(fs_info, "delayed_refs_rsv",
					      0, released, 0);
}