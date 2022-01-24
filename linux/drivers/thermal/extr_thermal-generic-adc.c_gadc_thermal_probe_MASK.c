#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gadc_thermal_info {int /*<<< orphan*/  tz_dev; int /*<<< orphan*/  channel; TYPE_1__* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct gadc_thermal_info* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct gadc_thermal_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gadc_thermal_ops ; 
 int FUNC6 (TYPE_1__*,struct gadc_thermal_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct gadc_thermal_info*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct gadc_thermal_info *gti;
	int ret;

	if (!pdev->dev.of_node) {
		FUNC2(&pdev->dev, "Only DT based supported\n");
		return -ENODEV;
	}

	gti = FUNC4(&pdev->dev, sizeof(*gti), GFP_KERNEL);
	if (!gti)
		return -ENOMEM;

	ret = FUNC6(&pdev->dev, gti);
	if (ret < 0)
		return ret;

	gti->dev = &pdev->dev;
	FUNC7(pdev, gti);

	gti->channel = FUNC3(&pdev->dev, "sensor-channel");
	if (FUNC0(gti->channel)) {
		ret = FUNC1(gti->channel);
		FUNC2(&pdev->dev, "IIO channel not found: %d\n", ret);
		return ret;
	}

	gti->tz_dev = FUNC5(&pdev->dev, 0, gti,
							   &gadc_thermal_ops);
	if (FUNC0(gti->tz_dev)) {
		ret = FUNC1(gti->tz_dev);
		FUNC2(&pdev->dev, "Thermal zone sensor register failed: %d\n",
			ret);
		return ret;
	}

	return 0;
}