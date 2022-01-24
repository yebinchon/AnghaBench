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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ci_hdrc_zevio_platdata ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct platform_device *ci_pdev;

	FUNC3(&pdev->dev, "ci_hdrc_zevio_probe\n");

	ci_pdev = FUNC2(&pdev->dev,
				pdev->resource, pdev->num_resources,
				&ci_hdrc_zevio_platdata);

	if (FUNC0(ci_pdev)) {
		FUNC4(&pdev->dev, "ci_hdrc_add_device failed!\n");
		return FUNC1(ci_pdev);
	}

	FUNC5(pdev, ci_pdev);

	return 0;
}