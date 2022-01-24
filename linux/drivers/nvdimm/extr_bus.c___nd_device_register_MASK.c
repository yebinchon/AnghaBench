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
struct device {struct device* parent; int /*<<< orphan*/ * bus; } ;
struct TYPE_2__ {scalar_t__ numa_node; } ;

/* Variables and functions */
 scalar_t__ NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  nd_async_device_register ; 
 int /*<<< orphan*/  nd_async_domain ; 
 int /*<<< orphan*/  nvdimm_bus_type ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

void FUNC6(struct device *dev)
{
	if (!dev)
		return;

	/*
	 * Ensure that region devices always have their NUMA node set as
	 * early as possible. This way we are able to make certain that
	 * any memory associated with the creation and the creation
	 * itself of the region is associated with the correct node.
	 */
	if (FUNC3(dev))
		FUNC4(dev, FUNC5(dev)->numa_node);

	dev->bus = &nvdimm_bus_type;
	if (dev->parent) {
		FUNC2(dev->parent);
		if (FUNC1(dev) == NUMA_NO_NODE)
			FUNC4(dev, FUNC1(dev->parent));
	}
	FUNC2(dev);

	FUNC0(nd_async_device_register, dev,
				  &nd_async_domain);
}