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
struct arche_platform_drvdata {int /*<<< orphan*/  dev; int /*<<< orphan*/  pm_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arche_platform_drvdata*) ; 
 int /*<<< orphan*/  arche_remove_child ; 
 int /*<<< orphan*/  dev_attr_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct arche_platform_drvdata* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct arche_platform_drvdata *arche_pdata = FUNC4(pdev);

	FUNC5(&arche_pdata->pm_notifier);
	FUNC3(&pdev->dev, &dev_attr_state);
	FUNC2(&pdev->dev, NULL, arche_remove_child);
	FUNC0(arche_pdata);

	if (FUNC6(false))
		FUNC1(arche_pdata->dev, "failed to control hub device\n");
		/* TODO: Should we do anything more here ?? */
	return 0;
}