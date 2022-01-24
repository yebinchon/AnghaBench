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
struct nvdimm_map {void* mem; int /*<<< orphan*/  kref; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 struct nvdimm_map* FUNC0 (struct device*,int /*<<< orphan*/ ,size_t,unsigned long) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ,struct nvdimm_map*) ; 
 struct nvdimm_map* FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  nvdimm_map_put ; 

void *FUNC6(struct device *dev, resource_size_t offset,
		size_t size, unsigned long flags)
{
	struct nvdimm_map *nvdimm_map;

	FUNC4(dev);
	nvdimm_map = FUNC2(dev, offset);
	if (!nvdimm_map)
		nvdimm_map = FUNC0(dev, offset, size, flags);
	else
		FUNC3(&nvdimm_map->kref);
	FUNC5(dev);

	if (!nvdimm_map)
		return NULL;

	if (FUNC1(dev, nvdimm_map_put, nvdimm_map))
		return NULL;

	return nvdimm_map->mem;
}