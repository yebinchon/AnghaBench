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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx2_uncore_pmu_add ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	acpi_handle handle;
	acpi_status status;

	FUNC9(dev, FUNC2(FUNC1(dev)));

	if (!FUNC7(dev))
		return -ENODEV;

	handle = FUNC1(dev);
	if (!handle)
		return -EINVAL;

	/* Walk through the tree for all PMU UNCORE devices */
	status = FUNC3(ACPI_TYPE_DEVICE, handle, 1,
				     tx2_uncore_pmu_add,
				     NULL, dev, NULL);
	if (FUNC0(status)) {
		FUNC4(dev, "failed to probe PMU devices\n");
		FUNC8(status);
	}

	FUNC5(dev, "node%d: pmu uncore registered\n", FUNC6(dev));
	return 0;
}