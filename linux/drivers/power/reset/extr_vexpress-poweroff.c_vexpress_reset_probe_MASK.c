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
struct regmap {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
typedef  enum vexpress_reset_func { ____Placeholder_vexpress_reset_func } vexpress_reset_func ;

/* Variables and functions */
 int EINVAL ; 
#define  FUNC_REBOOT 130 
#define  FUNC_RESET 129 
#define  FUNC_SHUTDOWN 128 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct regmap*) ; 
 struct regmap* FUNC4 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pm_power_off ; 
 int /*<<< orphan*/  vexpress_power_off ; 
 int /*<<< orphan*/ * vexpress_power_off_device ; 
 int /*<<< orphan*/  vexpress_reset_of_match ; 
 int /*<<< orphan*/  vexpress_restart_device ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	const struct of_device_id *match =
			FUNC5(vexpress_reset_of_match, &pdev->dev);
	struct regmap *regmap;
	int ret = 0;

	if (!match)
		return -EINVAL;

	regmap = FUNC4(&pdev->dev);
	if (FUNC0(regmap))
		return FUNC1(regmap);
	FUNC3(&pdev->dev, regmap);

	switch ((enum vexpress_reset_func)match->data) {
	case FUNC_SHUTDOWN:
		vexpress_power_off_device = &pdev->dev;
		pm_power_off = vexpress_power_off;
		break;
	case FUNC_RESET:
		if (!vexpress_restart_device)
			ret = FUNC2(&pdev->dev);
		break;
	case FUNC_REBOOT:
		ret = FUNC2(&pdev->dev);
		break;
	};

	return ret;
}