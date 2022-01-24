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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  OCOTP_ANA1 ; 
 int /*<<< orphan*/  OCOTP_MEM0 ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct regmap *map;
	int ret;
	u32 val;

	map = FUNC6(pdev->dev.of_node,
					      "fsl,tempmon-data");
	if (FUNC0(map)) {
		ret = FUNC1(map);
		FUNC2(&pdev->dev, "failed to get sensor regmap: %d\n", ret);
		return ret;
	}

	ret = FUNC5(map, OCOTP_ANA1, &val);
	if (ret) {
		FUNC2(&pdev->dev, "failed to read sensor data: %d\n", ret);
		return ret;
	}
	ret = FUNC3(pdev, val);
	if (ret)
		return ret;

	ret = FUNC5(map, OCOTP_MEM0, &val);
	if (ret) {
		FUNC2(&pdev->dev, "failed to read sensor data: %d\n", ret);
		return ret;
	}
	FUNC4(pdev, val);

	return 0;
}