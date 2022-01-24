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
struct nd_region {int /*<<< orphan*/  dev; } ;
struct conflict_context {int /*<<< orphan*/  size; int /*<<< orphan*/  start; struct nd_region* nd_region; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct conflict_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  region_conflict ; 
 struct nvdimm_bus* FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct nd_region *nd_region, resource_size_t start,
		resource_size_t size)
{
	struct nvdimm_bus *nvdimm_bus = FUNC1(&nd_region->dev);
	struct conflict_context ctx = {
		.nd_region = nd_region,
		.start = start,
		.size = size,
	};

	return FUNC0(&nvdimm_bus->dev, &ctx, region_conflict);
}