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
struct rpmhpd_desc {size_t num_pds; struct rpmhpd** rpmhpds; } ;
struct TYPE_4__ {int /*<<< orphan*/  opp_to_performance_state; int /*<<< orphan*/  set_performance_state; int /*<<< orphan*/  power_on; int /*<<< orphan*/  power_off; } ;
struct rpmhpd {TYPE_1__ pd; scalar_t__ parent; int /*<<< orphan*/  res_name; int /*<<< orphan*/  addr; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct genpd_onecell_data {size_t num_domains; TYPE_1__** domains; } ;

/* Variables and functions */
 int CMD_DB_HW_ARC ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 TYPE_1__** FUNC4 (struct device*,size_t,int,int /*<<< orphan*/ ) ; 
 struct genpd_onecell_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct rpmhpd_desc* FUNC6 (struct device*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct genpd_onecell_data*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rpmhpd_get_performance_state ; 
 int /*<<< orphan*/  rpmhpd_power_off ; 
 int /*<<< orphan*/  rpmhpd_power_on ; 
 int /*<<< orphan*/  rpmhpd_set_performance_state ; 
 int FUNC10 (struct rpmhpd*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int i, ret;
	size_t num_pds;
	struct device *dev = &pdev->dev;
	struct genpd_onecell_data *data;
	struct rpmhpd **rpmhpds;
	const struct rpmhpd_desc *desc;

	desc = FUNC6(dev);
	if (!desc)
		return -EINVAL;

	rpmhpds = desc->rpmhpds;
	num_pds = desc->num_pds;

	data = FUNC5(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->domains = FUNC4(dev, num_pds, sizeof(*data->domains),
				     GFP_KERNEL);
	if (!data->domains)
		return -ENOMEM;

	data->num_domains = num_pds;

	for (i = 0; i < num_pds; i++) {
		if (!rpmhpds[i]) {
			FUNC3(dev, "rpmhpds[%d] is empty\n", i);
			continue;
		}

		rpmhpds[i]->dev = dev;
		rpmhpds[i]->addr = FUNC0(rpmhpds[i]->res_name);
		if (!rpmhpds[i]->addr) {
			FUNC2(dev, "Could not find RPMh address for resource %s\n",
				rpmhpds[i]->res_name);
			return -ENODEV;
		}

		ret = FUNC1(rpmhpds[i]->res_name);
		if (ret != CMD_DB_HW_ARC) {
			FUNC2(dev, "RPMh slave ID mismatch\n");
			return -EINVAL;
		}

		ret = FUNC10(rpmhpds[i]);
		if (ret)
			return ret;

		rpmhpds[i]->pd.power_off = rpmhpd_power_off;
		rpmhpds[i]->pd.power_on = rpmhpd_power_on;
		rpmhpds[i]->pd.set_performance_state = rpmhpd_set_performance_state;
		rpmhpds[i]->pd.opp_to_performance_state = rpmhpd_get_performance_state;
		FUNC9(&rpmhpds[i]->pd, NULL, true);

		data->domains[i] = &rpmhpds[i]->pd;
	}

	/* Add subdomains */
	for (i = 0; i < num_pds; i++) {
		if (!rpmhpds[i])
			continue;
		if (rpmhpds[i]->parent)
			FUNC8(rpmhpds[i]->parent,
					       &rpmhpds[i]->pd);
	}

	return FUNC7(pdev->dev.of_node, data);
}