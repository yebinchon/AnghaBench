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
struct generic_pm_domain {int /*<<< orphan*/  detach_dev; int /*<<< orphan*/  attach_dev; int /*<<< orphan*/  power_on; int /*<<< orphan*/  power_off; int /*<<< orphan*/  name; } ;
struct zynqmp_pm_domain {struct generic_pm_domain gpd; scalar_t__ node_id; } ;
struct device {TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct genpd_onecell_data {int num_domains; struct generic_pm_domain** domains; int /*<<< orphan*/  xlate; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ZYNQMP_NUM_DOMAINS ; 
 void* FUNC2 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct genpd_onecell_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eemi_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct genpd_onecell_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct generic_pm_domain*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zynqmp_gpd_attach_dev ; 
 int /*<<< orphan*/  zynqmp_gpd_detach_dev ; 
 int /*<<< orphan*/  zynqmp_gpd_power_off ; 
 int /*<<< orphan*/  zynqmp_gpd_power_on ; 
 int /*<<< orphan*/  zynqmp_gpd_xlate ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int i;
	struct genpd_onecell_data *zynqmp_pd_data;
	struct generic_pm_domain **domains;
	struct zynqmp_pm_domain *pd;
	struct device *dev = &pdev->dev;

	eemi_ops = FUNC7();
	if (FUNC0(eemi_ops))
		return FUNC1(eemi_ops);

	pd = FUNC2(dev, ZYNQMP_NUM_DOMAINS, sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;

	zynqmp_pd_data = FUNC3(dev, sizeof(*zynqmp_pd_data), GFP_KERNEL);
	if (!zynqmp_pd_data)
		return -ENOMEM;

	zynqmp_pd_data->xlate = zynqmp_gpd_xlate;

	domains = FUNC2(dev, ZYNQMP_NUM_DOMAINS, sizeof(*domains),
			       GFP_KERNEL);
	if (!domains)
		return -ENOMEM;

	for (i = 0; i < ZYNQMP_NUM_DOMAINS; i++, pd++) {
		pd->node_id = 0;
		pd->gpd.name = FUNC4(GFP_KERNEL, "domain%d", i);
		pd->gpd.power_off = zynqmp_gpd_power_off;
		pd->gpd.power_on = zynqmp_gpd_power_on;
		pd->gpd.attach_dev = zynqmp_gpd_attach_dev;
		pd->gpd.detach_dev = zynqmp_gpd_detach_dev;

		domains[i] = &pd->gpd;

		/* Mark all PM domains as initially powered off */
		FUNC6(&pd->gpd, NULL, true);
	}

	zynqmp_pd_data->domains = domains;
	zynqmp_pd_data->num_domains = ZYNQMP_NUM_DOMAINS;
	FUNC5(dev->parent->of_node, zynqmp_pd_data);

	return 0;
}