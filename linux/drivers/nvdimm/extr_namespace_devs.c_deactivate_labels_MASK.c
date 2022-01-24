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
struct nvdimm {int /*<<< orphan*/  busy; } ;
struct nd_region {int ndr_mappings; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm_drvdata* ndd; int /*<<< orphan*/  lock; struct nvdimm* nvdimm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_mapping*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvdimm_drvdata*) ; 

__attribute__((used)) static void FUNC5(void *region)
{
	struct nd_region *nd_region = region;
	int i;

	for (i = 0; i < nd_region->ndr_mappings; i++) {
		struct nd_mapping *nd_mapping = &nd_region->mapping[i];
		struct nvdimm_drvdata *ndd = nd_mapping->ndd;
		struct nvdimm *nvdimm = nd_mapping->nvdimm;

		FUNC1(&nd_mapping->lock);
		FUNC3(nd_mapping);
		FUNC2(&nd_mapping->lock);

		FUNC4(ndd);
		nd_mapping->ndd = NULL;
		if (ndd)
			FUNC0(&nvdimm->busy);
	}
}