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
struct nvdimm {int /*<<< orphan*/  flags; } ;
struct nd_region {size_t ndr_mappings; int /*<<< orphan*/  dev; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDD_ALIASING ; 
 int ND_DEVICE_NAMESPACE_BLK ; 
 int ND_DEVICE_NAMESPACE_IO ; 
 int ND_DEVICE_NAMESPACE_PMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct nd_region *nd_region)
{
	if (FUNC0(&nd_region->dev)) {
		u16 i, alias;

		for (i = 0, alias = 0; i < nd_region->ndr_mappings; i++) {
			struct nd_mapping *nd_mapping = &nd_region->mapping[i];
			struct nvdimm *nvdimm = nd_mapping->nvdimm;

			if (FUNC2(NDD_ALIASING, &nvdimm->flags))
				alias++;
		}
		if (alias)
			return ND_DEVICE_NAMESPACE_PMEM;
		else
			return ND_DEVICE_NAMESPACE_IO;
	} else if (FUNC1(&nd_region->dev)) {
		return ND_DEVICE_NAMESPACE_BLK;
	}

	return 0;
}