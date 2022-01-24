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
struct btrfs_space_info {scalar_t__ bytes_used; scalar_t__ bytes_reserved; int /*<<< orphan*/  total_bytes; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_REMOUNTING ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct btrfs_space_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct btrfs_fs_info *fs_info,
					struct btrfs_space_info *space_info,
					u64 used, bool system_chunk)
{
	u64 thresh = FUNC2(space_info->total_bytes, 98);

	/* If we're just plain full then async reclaim just slows us down. */
	if ((space_info->bytes_used + space_info->bytes_reserved) >= thresh)
		return 0;

	if (!FUNC0(fs_info, space_info,
					      system_chunk))
		return 0;

	return (used >= thresh && !FUNC1(fs_info) &&
		!FUNC3(BTRFS_FS_STATE_REMOUNTING, &fs_info->fs_state));
}