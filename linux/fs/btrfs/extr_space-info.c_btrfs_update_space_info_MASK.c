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
struct btrfs_space_info {int total_bytes; int disk_total; int bytes_used; int disk_used; int /*<<< orphan*/  lock; scalar_t__ full; int /*<<< orphan*/  bytes_readonly; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_space_info*) ; 
 int FUNC1 (int) ; 
 struct btrfs_space_info* FUNC2 (struct btrfs_fs_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,struct btrfs_space_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct btrfs_fs_info *info, u64 flags,
			     u64 total_bytes, u64 bytes_used,
			     u64 bytes_readonly,
			     struct btrfs_space_info **space_info)
{
	struct btrfs_space_info *found;
	int factor;

	factor = FUNC1(flags);

	found = FUNC2(info, flags);
	FUNC0(found);
	FUNC4(&found->lock);
	found->total_bytes += total_bytes;
	found->disk_total += total_bytes * factor;
	found->bytes_used += bytes_used;
	found->disk_used += bytes_used * factor;
	found->bytes_readonly += bytes_readonly;
	if (total_bytes > 0)
		found->full = 0;
	FUNC3(info, found);
	FUNC5(&found->lock);
	*space_info = found;
}