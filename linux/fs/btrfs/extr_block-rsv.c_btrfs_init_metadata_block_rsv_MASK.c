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
struct btrfs_block_rsv {int /*<<< orphan*/  space_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_GROUP_METADATA ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_rsv*,unsigned short) ; 

void FUNC2(struct btrfs_fs_info *fs_info,
				   struct btrfs_block_rsv *rsv,
				   unsigned short type)
{
	FUNC1(rsv, type);
	rsv->space_info = FUNC0(fs_info,
					    BTRFS_BLOCK_GROUP_METADATA);
}