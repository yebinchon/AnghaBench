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
struct opp_table {int required_opp_count; int /*<<< orphan*/  genpd_virt_dev_lock; struct device** genpd_virt_devs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct opp_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct device* FUNC5 (struct device*,char const*) ; 
 struct opp_table* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct opp_table*) ; 
 struct device** FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct opp_table *FUNC11(struct device *dev,
		const char **names, struct device ***virt_devs)
{
	struct opp_table *opp_table;
	struct device *virt_dev;
	int index = 0, ret = -EINVAL;
	const char **name = names;

	opp_table = FUNC6(dev);
	if (!opp_table)
		return FUNC0(-ENOMEM);

	/*
	 * If the genpd's OPP table isn't already initialized, parsing of the
	 * required-opps fail for dev. We should retry this after genpd's OPP
	 * table is added.
	 */
	if (!opp_table->required_opp_count) {
		ret = -EPROBE_DEFER;
		goto put_table;
	}

	FUNC9(&opp_table->genpd_virt_dev_lock);

	opp_table->genpd_virt_devs = FUNC8(opp_table->required_opp_count,
					     sizeof(*opp_table->genpd_virt_devs),
					     GFP_KERNEL);
	if (!opp_table->genpd_virt_devs)
		goto unlock;

	while (*name) {
		if (index >= opp_table->required_opp_count) {
			FUNC4(dev, "Index can't be greater than required-opp-count - 1, %s (%d : %d)\n",
				*name, opp_table->required_opp_count, index);
			goto err;
		}

		if (opp_table->genpd_virt_devs[index]) {
			FUNC4(dev, "Genpd virtual device already set %s\n",
				*name);
			goto err;
		}

		virt_dev = FUNC5(dev, *name);
		if (FUNC1(virt_dev)) {
			ret = FUNC2(virt_dev);
			FUNC4(dev, "Couldn't attach to pm_domain: %d\n", ret);
			goto err;
		}

		opp_table->genpd_virt_devs[index] = virt_dev;
		index++;
		name++;
	}

	if (virt_devs)
		*virt_devs = opp_table->genpd_virt_devs;
	FUNC10(&opp_table->genpd_virt_dev_lock);

	return opp_table;

err:
	FUNC3(opp_table);
unlock:
	FUNC10(&opp_table->genpd_virt_dev_lock);

put_table:
	FUNC7(opp_table);

	return FUNC0(ret);
}