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
struct scp_subdomain {size_t origin; size_t subdomain; } ;
struct scp_soc_data {int num_subdomains; struct scp_subdomain* subdomains; int /*<<< orphan*/  num_domains; int /*<<< orphan*/  bus_prot_reg_update; int /*<<< orphan*/  regs; int /*<<< orphan*/  domains; } ;
struct genpd_onecell_data {int /*<<< orphan*/ * domains; } ;
struct scp {struct genpd_onecell_data pd_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scp*) ; 
 int FUNC2 (struct scp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct scp* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct scp*,int /*<<< orphan*/ ) ; 
 struct scp_soc_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	const struct scp_subdomain *sd;
	const struct scp_soc_data *soc;
	struct scp *scp;
	struct genpd_onecell_data *pd_data;
	int i, ret;

	soc = FUNC6(&pdev->dev);

	scp = FUNC4(pdev, soc->domains, soc->num_domains, &soc->regs,
			soc->bus_prot_reg_update);
	if (FUNC1(scp))
		return FUNC2(scp);

	FUNC5(pdev, scp, soc->num_domains);

	pd_data = &scp->pd_data;

	for (i = 0, sd = soc->subdomains; i < soc->num_subdomains; i++, sd++) {
		ret = FUNC7(pd_data->domains[sd->origin],
					     pd_data->domains[sd->subdomain]);
		if (ret && FUNC0(CONFIG_PM))
			FUNC3(&pdev->dev, "Failed to add subdomain: %d\n",
				ret);
	}

	return 0;
}