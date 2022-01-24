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
struct regmap {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* power_on ) (TYPE_1__*) ;} ;
struct imx_pm_domain {int ipg_rate_mhz; TYPE_1__ base; int /*<<< orphan*/  supply; struct regmap* regmap; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM_GENERIC_DOMAINS ; 
 size_t GPC_PGC_DOMAIN_PU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct imx_pm_domain* imx_gpc_domains ; 
 int /*<<< orphan*/  imx_gpc_onecell_data ; 
 int FUNC4 (struct device*,struct imx_pm_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_pm_domain*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct regmap *regmap,
			       unsigned int num_domains)
{
	struct imx_pm_domain *domain;
	int i, ret;

	for (i = 0; i < num_domains; i++) {
		domain = &imx_gpc_domains[i];
		domain->regmap = regmap;
		domain->ipg_rate_mhz = 66;

		if (i == 1) {
			domain->supply = FUNC3(dev, "pu");
			if (FUNC1(domain->supply))
				return FUNC2(domain->supply);

			ret = FUNC4(dev, domain);
			if (ret)
				goto clk_err;

			domain->base.power_on(&domain->base);
		}
	}

	for (i = 0; i < num_domains; i++)
		FUNC7(&imx_gpc_domains[i].base, NULL, false);

	if (FUNC0(CONFIG_PM_GENERIC_DOMAINS)) {
		ret = FUNC6(dev->of_node,
						    &imx_gpc_onecell_data);
		if (ret)
			goto genpd_err;
	}

	return 0;

genpd_err:
	for (i = 0; i < num_domains; i++)
		FUNC8(&imx_gpc_domains[i].base);
	FUNC5(&imx_gpc_domains[GPC_PGC_DOMAIN_PU]);
clk_err:
	return ret;
}