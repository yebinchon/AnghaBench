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
struct nd_region {int /*<<< orphan*/  dev; int /*<<< orphan*/  pfn_seed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_region*) ; 

void FUNC4(struct nd_region *nd_region)
{
	FUNC0(!FUNC2(&nd_region->dev));
	nd_region->pfn_seed = FUNC3(nd_region);
	/*
	 * Seed creation failures are not fatal, provisioning is simply
	 * disabled until memory becomes available
	 */
	if (!nd_region->pfn_seed)
		FUNC1(&nd_region->dev, "failed to create pfn namespace\n");
}