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
struct tegra_powergate_info {int dummy; } ;
struct generic_pm_domain {int /*<<< orphan*/  name; } ;
struct tegra_powergate {struct generic_pm_domain genpd; } ;
struct genpd_onecell_data {unsigned int num_domains; struct generic_pm_domain** domains; } ;
struct tegra_bpmp {int /*<<< orphan*/  dev; struct genpd_onecell_data genpd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tegra_powergate*) ; 
 int FUNC1 (struct tegra_powergate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct generic_pm_domain** FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct generic_pm_domain**) ; 
 struct tegra_powergate* FUNC5 (struct tegra_bpmp*,struct tegra_powergate_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_powergate*) ; 
 struct tegra_powergate* FUNC7 (struct generic_pm_domain*) ; 

__attribute__((used)) static int FUNC8(struct tegra_bpmp *bpmp,
				     struct tegra_powergate_info *powergates,
				     unsigned int count)
{
	struct genpd_onecell_data *genpd = &bpmp->genpd;
	struct generic_pm_domain **domains;
	struct tegra_powergate *powergate;
	unsigned int i;
	int err;

	domains = FUNC3(count, sizeof(*domains), GFP_KERNEL);
	if (!domains)
		return -ENOMEM;

	for (i = 0; i < count; i++) {
		powergate = FUNC5(bpmp, &powergates[i]);
		if (FUNC0(powergate)) {
			err = FUNC1(powergate);
			goto remove;
		}

		FUNC2(bpmp->dev, "added power domain %s\n",
			powergate->genpd.name);
		domains[i] = &powergate->genpd;
	}

	genpd->num_domains = count;
	genpd->domains = domains;

	return 0;

remove:
	while (i--) {
		powergate = FUNC7(domains[i]);
		FUNC6(powergate);
	}

	FUNC4(genpd->domains);
	return err;
}