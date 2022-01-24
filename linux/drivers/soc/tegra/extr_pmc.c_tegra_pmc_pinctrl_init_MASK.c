#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tegra_pmc {int /*<<< orphan*/  dev; int /*<<< orphan*/  pctl_dev; TYPE_1__* soc; } ;
struct TYPE_5__ {scalar_t__ npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ num_pin_descs; int /*<<< orphan*/  pin_descs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,struct tegra_pmc*) ; 
 TYPE_2__ tegra_pmc_pctl_desc ; 

__attribute__((used)) static int FUNC5(struct tegra_pmc *pmc)
{
	int err;

	if (!pmc->soc->num_pin_descs)
		return 0;

	tegra_pmc_pctl_desc.name = FUNC3(pmc->dev);
	tegra_pmc_pctl_desc.pins = pmc->soc->pin_descs;
	tegra_pmc_pctl_desc.npins = pmc->soc->num_pin_descs;

	pmc->pctl_dev = FUNC4(pmc->dev, &tegra_pmc_pctl_desc,
					      pmc);
	if (FUNC0(pmc->pctl_dev)) {
		err = FUNC1(pmc->pctl_dev);
		FUNC2(pmc->dev, "failed to register pin controller: %d\n",
			err);
		return err;
	}

	return 0;
}