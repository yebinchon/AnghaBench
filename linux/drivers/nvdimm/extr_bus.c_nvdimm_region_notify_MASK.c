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
struct nvdimm_bus {int dummy; } ;
struct nd_region {int /*<<< orphan*/  dev; } ;
typedef  enum nvdimm_event { ____Placeholder_nvdimm_event } nvdimm_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct nvdimm_bus* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct nd_region *nd_region, enum nvdimm_event event)
{
	struct nvdimm_bus *nvdimm_bus = FUNC1(&nd_region->dev);

	if (!nvdimm_bus)
		return;

	/* caller is responsible for holding a reference on the device */
	FUNC0(&nd_region->dev, event);
}