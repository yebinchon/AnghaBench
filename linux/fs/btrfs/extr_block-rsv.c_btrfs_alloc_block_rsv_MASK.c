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
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct btrfs_block_rsv*,unsigned short) ; 
 struct btrfs_block_rsv* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct btrfs_block_rsv *FUNC2(struct btrfs_fs_info *fs_info,
					      unsigned short type)
{
	struct btrfs_block_rsv *block_rsv;

	block_rsv = FUNC1(sizeof(*block_rsv), GFP_NOFS);
	if (!block_rsv)
		return NULL;

	FUNC0(fs_info, block_rsv, type);
	return block_rsv;
}