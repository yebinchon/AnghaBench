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
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  power_on; int /*<<< orphan*/  power_off; } ;
struct tegra_powergate {int id; size_t num_clks; struct tegra_powergate* clks; int /*<<< orphan*/  reset; TYPE_1__ genpd; struct tegra_pmc* pmc; } ;
struct tegra_pmc {int /*<<< orphan*/  powergates_available; struct device* dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM_GENERIC_DOMAINS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_powergate) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_powergate*) ; 
 struct tegra_powergate* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_genpd_power_off ; 
 int /*<<< orphan*/  tegra_genpd_power_on ; 
 int /*<<< orphan*/  FUNC13 (struct tegra_pmc*,int) ; 
 int FUNC14 (struct tegra_pmc*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct tegra_powergate*,struct device_node*) ; 
 int FUNC16 (struct tegra_powergate*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct tegra_powergate*,int) ; 

__attribute__((used)) static int FUNC18(struct tegra_pmc *pmc, struct device_node *np)
{
	struct device *dev = pmc->dev;
	struct tegra_powergate *pg;
	int id, err = 0;
	bool off;

	pg = FUNC7(sizeof(*pg), GFP_KERNEL);
	if (!pg)
		return -ENOMEM;

	id = FUNC14(pmc, np->name);
	if (id < 0) {
		FUNC5(dev, "powergate lookup failed for %pOFn: %d\n", np, id);
		err = -ENODEV;
		goto free_mem;
	}

	/*
	 * Clear the bit for this powergate so it cannot be managed
	 * directly via the legacy APIs for controlling powergates.
	 */
	FUNC2(id, pmc->powergates_available);

	pg->id = id;
	pg->genpd.name = np->name;
	pg->genpd.power_off = tegra_genpd_power_off;
	pg->genpd.power_on = tegra_genpd_power_on;
	pg->pmc = pmc;

	off = !FUNC13(pmc, pg->id);

	err = FUNC15(pg, np);
	if (err < 0) {
		FUNC5(dev, "failed to get clocks for %pOFn: %d\n", np, err);
		goto set_available;
	}

	err = FUNC16(pg, np, off);
	if (err < 0) {
		FUNC5(dev, "failed to get resets for %pOFn: %d\n", np, err);
		goto remove_clks;
	}

	if (!FUNC0(CONFIG_PM_GENERIC_DOMAINS)) {
		if (off)
			FUNC1(FUNC17(pg, true));

		goto remove_resets;
	}

	err = FUNC9(&pg->genpd, NULL, off);
	if (err < 0) {
		FUNC5(dev, "failed to initialise PM domain %pOFn: %d\n", np,
		       err);
		goto remove_resets;
	}

	err = FUNC8(np, &pg->genpd);
	if (err < 0) {
		FUNC5(dev, "failed to add PM domain provider for %pOFn: %d\n",
			np, err);
		goto remove_genpd;
	}

	FUNC4(dev, "added PM domain %s\n", pg->genpd.name);

	return 0;

remove_genpd:
	FUNC10(&pg->genpd);

remove_resets:
	FUNC11(pg->reset);

remove_clks:
	while (pg->num_clks--)
		FUNC3(pg->clks[pg->num_clks]);

	FUNC6(pg->clks);

set_available:
	FUNC12(id, pmc->powergates_available);

free_mem:
	FUNC6(pg);

	return err;
}