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
struct nd_region {int /*<<< orphan*/ * bb_state; int /*<<< orphan*/ * dax_seed; int /*<<< orphan*/ * pfn_seed; int /*<<< orphan*/ * btt_seed; int /*<<< orphan*/ * ns_seed; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  child_unregister ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nd_region* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct nd_region *nd_region = FUNC5(dev);

	FUNC1(dev, NULL, child_unregister);

	/* flush attribute readers and disable */
	FUNC2(dev);
	nd_region->ns_seed = NULL;
	nd_region->btt_seed = NULL;
	nd_region->pfn_seed = NULL;
	nd_region->dax_seed = NULL;
	FUNC0(dev, NULL);
	FUNC3(dev);

	/*
	 * Note, this assumes nd_device_lock() context to not race
	 * nd_region_notify()
	 */
	FUNC4(nd_region->bb_state);
	nd_region->bb_state = NULL;

	return 0;
}