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
struct tegra_powergate_info {struct tegra_powergate_info* name; } ;
struct TYPE_2__ {int /*<<< orphan*/  xlate; } ;
struct tegra_bpmp {TYPE_1__ genpd; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_powergate_info*) ; 
 int FUNC3 (struct device_node*,TYPE_1__*) ; 
 int FUNC4 (struct tegra_bpmp*,struct tegra_powergate_info*,unsigned int) ; 
 int FUNC5 (struct tegra_bpmp*,struct tegra_powergate_info**) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_bpmp*) ; 
 int /*<<< orphan*/  tegra_powergate_xlate ; 

int FUNC7(struct tegra_bpmp *bpmp)
{
	struct device_node *np = bpmp->dev->of_node;
	struct tegra_powergate_info *powergates;
	struct device *dev = bpmp->dev;
	unsigned int count, i;
	int err;

	err = FUNC5(bpmp, &powergates);
	if (err < 0)
		return err;

	count = err;

	FUNC0(dev, "%u power domains probed\n", count);

	err = FUNC4(bpmp, powergates, count);
	if (err < 0)
		goto free;

	bpmp->genpd.xlate = tegra_powergate_xlate;

	err = FUNC3(np, &bpmp->genpd);
	if (err < 0) {
		FUNC1(dev, "failed to add power domain provider: %d\n", err);
		FUNC6(bpmp);
	}

free:
	for (i = 0; i < count; i++)
		FUNC2(powergates[i].name);

	FUNC2(powergates);
	return err;
}