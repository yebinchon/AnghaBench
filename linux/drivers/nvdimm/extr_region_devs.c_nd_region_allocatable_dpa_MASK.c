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
struct nd_region {int ndr_mappings; int /*<<< orphan*/  dev; struct nd_mapping* mapping; } ;
struct nd_mapping {int dummy; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int PHYS_ADDR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC6 (struct nd_region*,struct nd_mapping*) ; 

resource_size_t FUNC7(struct nd_region *nd_region)
{
	resource_size_t available = 0;
	int i;

	if (FUNC1(&nd_region->dev))
		available = PHYS_ADDR_MAX;

	FUNC0(!FUNC3(&nd_region->dev));
	for (i = 0; i < nd_region->ndr_mappings; i++) {
		struct nd_mapping *nd_mapping = &nd_region->mapping[i];

		if (FUNC1(&nd_region->dev))
			available = FUNC4(available,
					FUNC6(nd_region,
								   nd_mapping));
		else if (FUNC2(&nd_region->dev))
			available += FUNC5(nd_region);
	}
	if (FUNC1(&nd_region->dev))
		return available * nd_region->ndr_mappings;
	return available;
}