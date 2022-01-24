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
typedef  size_t u16 ;
struct nvdimm {int /*<<< orphan*/  dev; } ;
struct nd_region {size_t ndr_mappings; int /*<<< orphan*/  id; int /*<<< orphan*/  lane; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  region_ida ; 
 struct nd_region* FUNC5 (struct device*) ; 
 struct nd_region* FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct nd_region *nd_region = FUNC6(dev);
	u16 i;

	for (i = 0; i < nd_region->ndr_mappings; i++) {
		struct nd_mapping *nd_mapping = &nd_region->mapping[i];
		struct nvdimm *nvdimm = nd_mapping->nvdimm;

		FUNC4(&nvdimm->dev);
	}
	FUNC0(nd_region->lane);
	FUNC1(&region_ida, nd_region->id);
	if (FUNC2(dev))
		FUNC3(FUNC5(dev));
	else
		FUNC3(nd_region);
}