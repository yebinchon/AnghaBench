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

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  count_dimms ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct nvdimm_bus *nvdimm_bus, int dimm_count)
{
	int count = 0;
	/* Flush any possible dimm registration failures */
	FUNC2();

	FUNC1(&nvdimm_bus->dev, &count, count_dimms);
	FUNC0(&nvdimm_bus->dev, "count: %d\n", count);
	if (count != dimm_count)
		return -ENXIO;
	return 0;
}