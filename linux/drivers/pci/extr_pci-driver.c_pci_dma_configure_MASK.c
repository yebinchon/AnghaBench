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
struct device {int /*<<< orphan*/  fwnode; TYPE_1__* parent; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,scalar_t__,int) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct acpi_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct device *bridge;
	int ret = 0;

	bridge = FUNC5(FUNC8(dev));

	if (FUNC0(CONFIG_OF) && bridge->parent &&
	    bridge->parent->of_node) {
		ret = FUNC4(dev, bridge->parent->of_node, true);
	} else if (FUNC3(bridge)) {
		struct acpi_device *adev = FUNC7(bridge->fwnode);

		ret = FUNC1(dev, FUNC2(adev));
	}

	FUNC6(bridge);
	return ret;
}