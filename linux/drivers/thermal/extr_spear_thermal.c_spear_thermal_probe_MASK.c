#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct thermal_zone_device {int /*<<< orphan*/  device; } ;
struct spear_thermal_dev {int flags; struct thermal_zone_device* clk; struct thermal_zone_device* thermal_base; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 int FUNC1 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_zone_device*) ; 
 int FUNC3 (struct thermal_zone_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,struct thermal_zone_device*) ; 
 struct thermal_zone_device* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct thermal_zone_device* FUNC7 (TYPE_1__*,struct resource*) ; 
 struct spear_thermal_dev* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  ops ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct thermal_zone_device*) ; 
 struct thermal_zone_device* FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spear_thermal_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,struct thermal_zone_device*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct thermal_zone_device *spear_thermal = NULL;
	struct spear_thermal_dev *stdev;
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;
	int ret = 0, val;

	if (!np || !FUNC9(np, "st,thermal-flags", &val)) {
		FUNC4(&pdev->dev, "Failed: DT Pdata not passed\n");
		return -EINVAL;
	}

	stdev = FUNC8(&pdev->dev, sizeof(*stdev), GFP_KERNEL);
	if (!stdev)
		return -ENOMEM;

	/* Enable thermal sensor */
	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	stdev->thermal_base = FUNC7(&pdev->dev, res);
	if (FUNC0(stdev->thermal_base))
		return FUNC1(stdev->thermal_base);

	stdev->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(stdev->clk)) {
		FUNC4(&pdev->dev, "Can't get clock\n");
		return FUNC1(stdev->clk);
	}

	ret = FUNC3(stdev->clk);
	if (ret) {
		FUNC4(&pdev->dev, "Can't enable clock\n");
		return ret;
	}

	stdev->flags = val;
	FUNC13(stdev->flags, stdev->thermal_base);

	spear_thermal = FUNC12("spear_thermal", 0, 0,
				stdev, &ops, NULL, 0, 0);
	if (FUNC0(spear_thermal)) {
		FUNC4(&pdev->dev, "thermal zone device is NULL\n");
		ret = FUNC1(spear_thermal);
		goto disable_clk;
	}

	FUNC11(pdev, spear_thermal);

	FUNC5(&spear_thermal->device, "Thermal Sensor Loaded at: 0x%p.\n",
			stdev->thermal_base);

	return 0;

disable_clk:
	FUNC2(stdev->clk);

	return ret;
}