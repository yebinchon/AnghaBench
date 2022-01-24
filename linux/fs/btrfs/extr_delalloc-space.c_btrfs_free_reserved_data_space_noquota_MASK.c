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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_space_info {int /*<<< orphan*/  lock; } ;
struct btrfs_fs_info {struct btrfs_space_info* data_sinfo; int /*<<< orphan*/  sectorsize; } ;

/* Variables and functions */
 struct btrfs_fs_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inode *inode, u64 start,
					    u64 len)
{
	struct btrfs_fs_info *fs_info = FUNC0(inode->i_sb);
	struct btrfs_space_info *data_sinfo;

	/* Make sure the range is aligned to sectorsize */
	len = FUNC3(start + len, fs_info->sectorsize) -
	      FUNC2(start, fs_info->sectorsize);
	start = FUNC2(start, fs_info->sectorsize);

	data_sinfo = fs_info->data_sinfo;
	FUNC4(&data_sinfo->lock);
	FUNC1(fs_info, data_sinfo, -len);
	FUNC5(&data_sinfo->lock);
}