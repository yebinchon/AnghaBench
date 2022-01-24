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
struct nvdimm_bus {scalar_t__ probe_active; int /*<<< orphan*/  wait; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct nvdimm_bus* FUNC5 (struct device*) ; 

void FUNC6(struct device *dev)
{
	struct nvdimm_bus *nvdimm_bus = FUNC5(dev);

	do {
		if (nvdimm_bus->probe_active == 0)
			break;
		FUNC3(dev);
		FUNC1(dev);
		FUNC4(nvdimm_bus->wait,
				nvdimm_bus->probe_active == 0);
		FUNC0(dev);
		FUNC2(dev);
	} while (true);
}