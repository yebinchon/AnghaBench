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
struct nvdimm_bus {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nvdimm_bus*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd_class ; 
 int /*<<< orphan*/  nvdimm_bus_major ; 

int FUNC6(struct nvdimm_bus *nvdimm_bus)
{
	dev_t devt = FUNC1(nvdimm_bus_major, nvdimm_bus->id);
	struct device *dev;

	dev = FUNC5(nd_class, &nvdimm_bus->dev, devt, nvdimm_bus,
			"ndctl%d", nvdimm_bus->id);

	if (FUNC0(dev))
		FUNC4(&nvdimm_bus->dev, "failed to register ndctl%d: %ld\n",
				nvdimm_bus->id, FUNC2(dev));
	return FUNC3(dev);
}