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
struct nvdimm_bus {int /*<<< orphan*/  dev; } ;
struct nvdimm {int dummy; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;

/* Variables and functions */
 int /*<<< orphan*/  __reserve_free_pmem ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nvdimm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvdimm_bus*,struct nd_mapping*) ; 

__attribute__((used)) static int FUNC2(struct nvdimm_bus *nvdimm_bus,
		struct nd_mapping *nd_mapping)
{
	struct nvdimm *nvdimm = nd_mapping->nvdimm;
	int rc;

	rc = FUNC0(&nvdimm_bus->dev, nvdimm,
			__reserve_free_pmem);
	if (rc)
		FUNC1(nvdimm_bus, nd_mapping);
	return rc;
}