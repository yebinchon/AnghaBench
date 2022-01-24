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
typedef  int u64 ;
struct buffer_head {scalar_t__ b_data; } ;
struct btrfs_super_block {int dummy; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int BTRFS_BDEV_BLOCKSIZE ; 
 scalar_t__ BTRFS_MAGIC ; 
 scalar_t__ BTRFS_SUPER_INFO_SIZE ; 
 int EINVAL ; 
 int EIO ; 
 struct buffer_head* FUNC0 (struct block_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct btrfs_super_block*) ; 
 scalar_t__ FUNC4 (struct btrfs_super_block*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct block_device *bdev, int copy_num,
			struct buffer_head **bh_ret)
{
	struct buffer_head *bh;
	struct btrfs_super_block *super;
	u64 bytenr;

	bytenr = FUNC2(copy_num);
	if (bytenr + BTRFS_SUPER_INFO_SIZE >= FUNC5(bdev->bd_inode))
		return -EINVAL;

	bh = FUNC0(bdev, bytenr / BTRFS_BDEV_BLOCKSIZE, BTRFS_SUPER_INFO_SIZE);
	/*
	 * If we fail to read from the underlying devices, as of now
	 * the best option we have is to mark it EIO.
	 */
	if (!bh)
		return -EIO;

	super = (struct btrfs_super_block *)bh->b_data;
	if (FUNC3(super) != bytenr ||
		    FUNC4(super) != BTRFS_MAGIC) {
		FUNC1(bh);
		return -EINVAL;
	}

	*bh_ret = bh;
	return 0;
}