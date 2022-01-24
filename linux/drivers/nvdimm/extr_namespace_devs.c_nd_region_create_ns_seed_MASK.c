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
struct nd_region {int /*<<< orphan*/  ns_seed; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ND_DEVICE_NAMESPACE_IO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC6 (struct nd_region*) ; 
 scalar_t__ FUNC7 (struct nd_region*) ; 

void FUNC8(struct nd_region *nd_region)
{
	FUNC0(!FUNC3(&nd_region->dev));

	if (FUNC7(nd_region) == ND_DEVICE_NAMESPACE_IO)
		return;

	if (FUNC2(&nd_region->dev))
		nd_region->ns_seed = FUNC5(nd_region);
	else
		nd_region->ns_seed = FUNC6(nd_region);

	/*
	 * Seed creation failures are not fatal, provisioning is simply
	 * disabled until memory becomes available
	 */
	if (!nd_region->ns_seed)
		FUNC1(&nd_region->dev, "failed to create %s namespace\n",
				FUNC2(&nd_region->dev) ? "blk" : "pmem");
	else
		FUNC4(nd_region->ns_seed);
}