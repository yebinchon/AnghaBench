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
struct device {int /*<<< orphan*/  parent; scalar_t__ of_node; struct imx_pm_domain* platform_data; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* power_on ) (TYPE_1__*) ;} ;
struct imx_pm_domain {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM_GENERIC_DOMAINS ; 
 int /*<<< orphan*/  DL_FLAG_AUTOREMOVE_CONSUMER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,struct imx_pm_domain*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_pm_domain*) ; 
 int FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct imx_pm_domain *domain = pdev->dev.platform_data;
	struct device *dev = &pdev->dev;
	int ret;

	/* if this PD is associated with a DT node try to parse it */
	if (dev->of_node) {
		ret = FUNC2(dev, domain);
		if (ret)
			return ret;
	}

	/* initially power on the domain */
	if (domain->base.power_on)
		domain->base.power_on(&domain->base);

	if (FUNC0(CONFIG_PM_GENERIC_DOMAINS)) {
		FUNC5(&domain->base, NULL, false);
		ret = FUNC4(dev->of_node, &domain->base);
		if (ret)
			goto genpd_err;
	}

	FUNC1(dev, dev->parent, DL_FLAG_AUTOREMOVE_CONSUMER);

	return 0;

genpd_err:
	FUNC6(&domain->base);
	FUNC3(domain);

	return ret;
}