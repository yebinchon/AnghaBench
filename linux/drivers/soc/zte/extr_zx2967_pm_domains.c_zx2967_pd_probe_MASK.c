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
struct resource {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct genpd_onecell_data {int num_domains; struct generic_pm_domain** domains; } ;
struct generic_pm_domain {int /*<<< orphan*/  power_off; int /*<<< orphan*/  power_on; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct resource*) ; 
 struct genpd_onecell_data* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct genpd_onecell_data*) ; 
 int /*<<< orphan*/  pcubase ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct generic_pm_domain*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zx2967_power_off ; 
 int /*<<< orphan*/  zx2967_power_on ; 

int FUNC8(struct platform_device *pdev,
		    struct generic_pm_domain **zx_pm_domains,
		    int domain_num)
{
	struct genpd_onecell_data *genpd_data;
	struct resource *res;
	int i;

	genpd_data = FUNC4(&pdev->dev, sizeof(*genpd_data), GFP_KERNEL);
	if (!genpd_data)
		return -ENOMEM;

	genpd_data->domains = zx_pm_domains;
	genpd_data->num_domains = domain_num;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	pcubase = FUNC3(&pdev->dev, res);
	if (FUNC0(pcubase))
		return FUNC1(pcubase);

	for (i = 0; i < domain_num; ++i) {
		zx_pm_domains[i]->power_on = zx2967_power_on;
		zx_pm_domains[i]->power_off = zx2967_power_off;

		FUNC7(zx_pm_domains[i], NULL, false);
	}

	FUNC5(pdev->dev.of_node, genpd_data);
	FUNC2(&pdev->dev, "powerdomain init ok\n");
	return 0;
}