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
struct btrfs_device {int /*<<< orphan*/  dev_stats_ccnt; scalar_t__ dev_stat_values; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct btrfs_device *dev,
						int index)
{
	int ret;

	ret = FUNC1(dev->dev_stat_values + index, 0);
	/*
	 * atomic_xchg implies a full memory barriers as per atomic_t.txt:
	 * - RMW operations that have a return value are fully ordered;
	 *
	 * This implicit memory barriers is paired with the smp_rmb in
	 * btrfs_run_dev_stats
	 */
	FUNC0(&dev->dev_stats_ccnt);
	return ret;
}