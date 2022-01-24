#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {char const* raid_name; } ;

/* Variables and functions */
 int const BTRFS_NR_RAID_TYPES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* btrfs_raid_array ; 

const char *FUNC1(u64 flags)
{
	const int index = FUNC0(flags);

	if (index >= BTRFS_NR_RAID_TYPES)
		return NULL;

	return btrfs_raid_array[index].raid_name;
}