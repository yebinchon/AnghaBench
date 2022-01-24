#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvdimm_bus {int dummy; } ;
struct device {int dummy; } ;
struct nd_region {int ndr_mappings; struct device dev; } ;
struct TYPE_2__ {int (* enable ) (struct nvdimm_bus*,struct device*) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct nvdimm_bus*,struct device*) ; 
 TYPE_1__* FUNC3 (struct device*) ; 
 struct nvdimm_bus* FUNC4 (struct device*) ; 

int FUNC5(struct nd_region *nd_region)
{
	struct device *dev = &nd_region->dev;
	struct nvdimm_bus *nvdimm_bus = FUNC4(dev);

	if (!FUNC1(dev))
		return 0;

	if (nd_region->ndr_mappings < 1) {
		FUNC0(dev, "invalid BLK region\n");
		return -ENXIO;
	}

	return FUNC3(dev)->enable(nvdimm_bus, dev);
}