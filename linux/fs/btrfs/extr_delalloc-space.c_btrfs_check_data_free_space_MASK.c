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
struct extent_changeset {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct inode*,struct extent_changeset**,scalar_t__,scalar_t__) ; 
 struct btrfs_fs_info* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC7(struct inode *inode,
			struct extent_changeset **reserved, u64 start, u64 len)
{
	struct btrfs_fs_info *fs_info = FUNC4(inode->i_sb);
	int ret;

	/* align the range */
	len = FUNC6(start + len, fs_info->sectorsize) -
	      FUNC5(start, fs_info->sectorsize);
	start = FUNC5(start, fs_info->sectorsize);

	ret = FUNC1(FUNC0(inode), len);
	if (ret < 0)
		return ret;

	/* Use new btrfs_qgroup_reserve_data to reserve precious data space. */
	ret = FUNC3(inode, reserved, start, len);
	if (ret < 0)
		FUNC2(inode, start, len);
	else
		ret = 0;
	return ret;
}