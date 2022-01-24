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
struct btrfs_raid_bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_raid_bio*) ; 
 int FUNC1 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_raid_bio*) ; 
 int FUNC3 (struct btrfs_raid_bio*) ; 

__attribute__((used)) static int FUNC4(struct btrfs_raid_bio *rbio)
{
	int ret;

	ret = FUNC1(rbio);
	if (ret) {
		FUNC0(rbio);
		return ret;
	}

	ret = FUNC3(rbio);
	if (ret == 0)
		FUNC2(rbio);
	return 0;
}