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
struct btrfs_space_info {int flags; int total_bytes; } ;
struct btrfs_fs_info {int /*<<< orphan*/  free_chunk_space; } ;
typedef  enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_DATA ; 
 int BTRFS_RESERVE_FLUSH_ALL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct btrfs_fs_info*) ; 
 int FUNC3 (struct btrfs_space_info*,int) ; 
 int FUNC4 (struct btrfs_fs_info*) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct btrfs_fs_info *fs_info,
			  struct btrfs_space_info *space_info, u64 bytes,
			  enum btrfs_reserve_flush_enum flush,
			  bool system_chunk)
{
	u64 profile;
	u64 avail;
	u64 used;
	int factor;

	/* Don't overcommit when in mixed mode. */
	if (space_info->flags & BTRFS_BLOCK_GROUP_DATA)
		return 0;

	if (system_chunk)
		profile = FUNC4(fs_info);
	else
		profile = FUNC2(fs_info);

	used = FUNC3(space_info, true);
	avail = FUNC0(&fs_info->free_chunk_space);

	/*
	 * If we have dup, raid1 or raid10 then only half of the free
	 * space is actually usable.  For raid56, the space info used
	 * doesn't include the parity drive, so we don't have to
	 * change the math
	 */
	factor = FUNC1(profile);
	avail = FUNC5(avail, factor);

	/*
	 * If we aren't flushing all things, let us overcommit up to
	 * 1/2th of the space. If we can flush, don't let us overcommit
	 * too much, let it overcommit up to 1/8 of the space.
	 */
	if (flush == BTRFS_RESERVE_FLUSH_ALL)
		avail >>= 3;
	else
		avail >>= 1;

	if (used + bytes < space_info->total_bytes + avail)
		return 1;
	return 0;
}