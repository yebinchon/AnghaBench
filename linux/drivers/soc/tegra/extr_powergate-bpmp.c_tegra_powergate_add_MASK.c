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
struct tegra_powergate_info {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  power_off; int /*<<< orphan*/  power_on; } ;
struct tegra_powergate {TYPE_1__ genpd; struct tegra_bpmp* bpmp; int /*<<< orphan*/  id; } ;
struct tegra_bpmp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tegra_powergate* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tegra_powergate* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_bpmp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_powergate_power_off ; 
 int /*<<< orphan*/  tegra_powergate_power_on ; 

__attribute__((used)) static struct tegra_powergate *
FUNC6(struct tegra_bpmp *bpmp,
		    const struct tegra_powergate_info *info)
{
	struct tegra_powergate *powergate;
	bool off;
	int err;

	off = !FUNC5(bpmp, info->id);

	powergate = FUNC1(bpmp->dev, sizeof(*powergate), GFP_KERNEL);
	if (!powergate)
		return FUNC0(-ENOMEM);

	powergate->id = info->id;
	powergate->bpmp = bpmp;

	powergate->genpd.name = FUNC3(info->name, GFP_KERNEL);
	powergate->genpd.power_on = tegra_powergate_power_on;
	powergate->genpd.power_off = tegra_powergate_power_off;

	err = FUNC4(&powergate->genpd, NULL, off);
	if (err < 0) {
		FUNC2(powergate->genpd.name);
		return FUNC0(err);
	}

	return powergate;
}