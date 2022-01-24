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
struct nvdimm_drvdata {int dummy; } ;
struct nd_region {int ndr_mappings; int /*<<< orphan*/  dev; struct nd_mapping* mapping; } ;
struct nd_mapping {int dummy; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct nd_region*) ; 
 scalar_t__ FUNC5 (struct nd_region*,struct nd_mapping*,scalar_t__*) ; 
 struct nvdimm_drvdata* FUNC6 (struct nd_mapping*) ; 

resource_size_t FUNC7(struct nd_region *nd_region)
{
	resource_size_t blk_max_overlap = 0, available, overlap;
	int i;

	FUNC0(!FUNC3(&nd_region->dev));

 retry:
	available = 0;
	overlap = blk_max_overlap;
	for (i = 0; i < nd_region->ndr_mappings; i++) {
		struct nd_mapping *nd_mapping = &nd_region->mapping[i];
		struct nvdimm_drvdata *ndd = FUNC6(nd_mapping);

		/* if a dimm is disabled the available capacity is zero */
		if (!ndd)
			return 0;

		if (FUNC1(&nd_region->dev)) {
			available += FUNC5(nd_region,
					nd_mapping, &overlap);
			if (overlap > blk_max_overlap) {
				blk_max_overlap = overlap;
				goto retry;
			}
		} else if (FUNC2(&nd_region->dev))
			available += FUNC4(nd_region);
	}

	return available;
}