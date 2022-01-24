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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ocelot_pinctrl {int /*<<< orphan*/  pctl; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocelot_pinctrl*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocelot_pinctrl*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				   struct ocelot_pinctrl *info)
{
	int ret;

	ret = FUNC4(&pdev->dev, info);
	if (ret) {
		FUNC2(&pdev->dev, "Unable to create group func map.\n");
		return ret;
	}

	info->pctl = FUNC3(&pdev->dev, info->desc, info);
	if (FUNC0(info->pctl)) {
		FUNC2(&pdev->dev, "Failed to register pinctrl\n");
		return FUNC1(info->pctl);
	}

	return 0;
}