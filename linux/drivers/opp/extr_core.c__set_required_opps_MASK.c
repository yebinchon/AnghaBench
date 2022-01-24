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
struct opp_table {int required_opp_count; int /*<<< orphan*/  genpd_virt_dev_lock; struct device** genpd_virt_devs; struct opp_table** required_opp_tables; } ;
struct device {int dummy; } ;
struct dev_pm_opp {TYPE_1__** required_opps; } ;
struct TYPE_2__ {unsigned int pstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,unsigned int) ; 
 scalar_t__ FUNC3 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
			      struct opp_table *opp_table,
			      struct dev_pm_opp *opp)
{
	struct opp_table **required_opp_tables = opp_table->required_opp_tables;
	struct device **genpd_virt_devs = opp_table->genpd_virt_devs;
	unsigned int pstate;
	int i, ret = 0;

	if (!required_opp_tables)
		return 0;

	/* Single genpd case */
	if (!genpd_virt_devs) {
		pstate = FUNC3(opp) ? opp->required_opps[0]->pstate : 0;
		ret = FUNC2(dev, pstate);
		if (ret) {
			FUNC0(dev, "Failed to set performance state of %s: %d (%d)\n",
				FUNC1(dev), pstate, ret);
		}
		return ret;
	}

	/* Multiple genpd case */

	/*
	 * Acquire genpd_virt_dev_lock to make sure we don't use a genpd_dev
	 * after it is freed from another thread.
	 */
	FUNC4(&opp_table->genpd_virt_dev_lock);

	for (i = 0; i < opp_table->required_opp_count; i++) {
		pstate = FUNC3(opp) ? opp->required_opps[i]->pstate : 0;

		if (!genpd_virt_devs[i])
			continue;

		ret = FUNC2(genpd_virt_devs[i], pstate);
		if (ret) {
			FUNC0(dev, "Failed to set performance rate of %s: %d (%d)\n",
				FUNC1(genpd_virt_devs[i]), pstate, ret);
			break;
		}
	}
	FUNC5(&opp_table->genpd_virt_dev_lock);

	return ret;
}