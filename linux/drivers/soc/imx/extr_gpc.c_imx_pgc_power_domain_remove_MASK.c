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
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct imx_pm_domain* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imx_pm_domain {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM_GENERIC_DOMAINS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_pm_domain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct imx_pm_domain *domain = pdev->dev.platform_data;

	if (FUNC0(CONFIG_PM_GENERIC_DOMAINS)) {
		FUNC2(pdev->dev.of_node);
		FUNC3(&domain->base);
		FUNC1(domain);
	}

	return 0;
}