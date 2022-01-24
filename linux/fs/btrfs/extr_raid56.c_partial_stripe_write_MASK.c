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
 int FUNC0 (struct btrfs_raid_bio*) ; 
 int /*<<< orphan*/  rmw_work ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_raid_bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct btrfs_raid_bio *rbio)
{
	int ret;

	ret = FUNC0(rbio);
	if (ret == 0)
		FUNC1(rbio, rmw_work);
	return 0;
}