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
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct btrfs_device *dev,
				      int index, unsigned long val)
{
	FUNC1(dev->dev_stat_values + index, val);
	/*
	 * This memory barrier orders stores updating statistics before stores
	 * updating dev_stats_ccnt.
	 *
	 * It pairs with smp_rmb() in btrfs_run_dev_stats().
	 */
	FUNC2();
	FUNC0(&dev->dev_stats_ccnt);
}