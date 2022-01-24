#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * stpmic1_matches ; 
 int /*<<< orphan*/ * stpmic1_regulator_cfgs ; 
 int FUNC4 (struct platform_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int i, ret;

	ret = FUNC3(&pdev->dev, pdev->dev.of_node, stpmic1_matches,
				 FUNC0(stpmic1_matches));
	if (ret < 0) {
		FUNC2(&pdev->dev,
			"Error in PMIC regulator device tree node");
		return ret;
	}

	for (i = 0; i < FUNC0(stpmic1_regulator_cfgs); i++) {
		ret = FUNC4(pdev, i, &stpmic1_matches[i],
						 &stpmic1_regulator_cfgs[i]);
		if (ret < 0)
			return ret;
	}

	FUNC1(&pdev->dev, "stpmic1_regulator driver probed\n");

	return 0;
}