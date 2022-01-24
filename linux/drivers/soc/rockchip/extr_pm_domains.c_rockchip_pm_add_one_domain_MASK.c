#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_8__ {TYPE_3__** domains; } ;
struct rockchip_pmu {TYPE_2__ genpd_data; int /*<<< orphan*/  dev; TYPE_1__* info; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  detach_dev; int /*<<< orphan*/  attach_dev; int /*<<< orphan*/  power_on; int /*<<< orphan*/  power_off; int /*<<< orphan*/  name; } ;
struct rockchip_pm_domain {int num_clks; int num_qos; TYPE_4__* clks; TYPE_3__ genpd; int /*<<< orphan*/ * qos_regmap; void** qos_save_regs; struct rockchip_pmu* pmu; struct rockchip_domain_info const* info; } ;
struct rockchip_domain_info {scalar_t__ active_wakeup; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  clk; } ;
struct TYPE_7__ {size_t num_domains; struct rockchip_domain_info* domain_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GENPD_FLAG_ACTIVE_WAKEUP ; 
 int /*<<< orphan*/  GENPD_FLAG_PM_CLK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_QOS_REGS_NUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct device_node*,int,...) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct rockchip_pm_domain* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,int) ; 
 int FUNC10 (struct device_node*) ; 
 int FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 struct device_node* FUNC13 (struct device_node*,char*,int) ; 
 int FUNC14 (struct device_node*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rockchip_pd_attach_dev ; 
 int /*<<< orphan*/  rockchip_pd_detach_dev ; 
 int FUNC16 (struct rockchip_pm_domain*,int) ; 
 int /*<<< orphan*/  rockchip_pd_power_off ; 
 int /*<<< orphan*/  rockchip_pd_power_on ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*) ; 

__attribute__((used)) static int FUNC18(struct rockchip_pmu *pmu,
				      struct device_node *node)
{
	const struct rockchip_domain_info *pd_info;
	struct rockchip_pm_domain *pd;
	struct device_node *qos_node;
	int i, j;
	u32 id;
	int error;

	error = FUNC14(node, "reg", &id);
	if (error) {
		FUNC6(pmu->dev,
			"%pOFn: failed to retrieve domain id (reg): %d\n",
			node, error);
		return -EINVAL;
	}

	if (id >= pmu->info->num_domains) {
		FUNC6(pmu->dev, "%pOFn: invalid domain id %d\n",
			node, id);
		return -EINVAL;
	}

	pd_info = &pmu->info->domain_info[id];
	if (!pd_info) {
		FUNC6(pmu->dev, "%pOFn: undefined domain id %d\n",
			node, id);
		return -EINVAL;
	}

	pd = FUNC8(pmu->dev, sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;

	pd->info = pd_info;
	pd->pmu = pmu;

	pd->num_clks = FUNC10(node);
	if (pd->num_clks > 0) {
		pd->clks = FUNC7(pmu->dev, pd->num_clks,
					sizeof(*pd->clks), GFP_KERNEL);
		if (!pd->clks)
			return -ENOMEM;
	} else {
		FUNC5(pmu->dev, "%pOFn: doesn't have clocks: %d\n",
			node, pd->num_clks);
		pd->num_clks = 0;
	}

	for (i = 0; i < pd->num_clks; i++) {
		pd->clks[i].clk = FUNC9(node, i);
		if (FUNC0(pd->clks[i].clk)) {
			error = FUNC1(pd->clks[i].clk);
			FUNC6(pmu->dev,
				"%pOFn: failed to get clk at index %d: %d\n",
				node, i, error);
			return error;
		}
	}

	error = FUNC2(pd->num_clks, pd->clks);
	if (error)
		goto err_put_clocks;

	pd->num_qos = FUNC11(node, "pm_qos",
						 NULL);

	if (pd->num_qos > 0) {
		pd->qos_regmap = FUNC7(pmu->dev, pd->num_qos,
					      sizeof(*pd->qos_regmap),
					      GFP_KERNEL);
		if (!pd->qos_regmap) {
			error = -ENOMEM;
			goto err_unprepare_clocks;
		}

		for (j = 0; j < MAX_QOS_REGS_NUM; j++) {
			pd->qos_save_regs[j] = FUNC7(pmu->dev,
							    pd->num_qos,
							    sizeof(u32),
							    GFP_KERNEL);
			if (!pd->qos_save_regs[j]) {
				error = -ENOMEM;
				goto err_unprepare_clocks;
			}
		}

		for (j = 0; j < pd->num_qos; j++) {
			qos_node = FUNC13(node, "pm_qos", j);
			if (!qos_node) {
				error = -ENODEV;
				goto err_unprepare_clocks;
			}
			pd->qos_regmap[j] = FUNC17(qos_node);
			if (FUNC0(pd->qos_regmap[j])) {
				error = -ENODEV;
				FUNC12(qos_node);
				goto err_unprepare_clocks;
			}
			FUNC12(qos_node);
		}
	}

	error = FUNC16(pd, true);
	if (error) {
		FUNC6(pmu->dev,
			"failed to power on domain '%pOFn': %d\n",
			node, error);
		goto err_unprepare_clocks;
	}

	pd->genpd.name = node->name;
	pd->genpd.power_off = rockchip_pd_power_off;
	pd->genpd.power_on = rockchip_pd_power_on;
	pd->genpd.attach_dev = rockchip_pd_attach_dev;
	pd->genpd.detach_dev = rockchip_pd_detach_dev;
	pd->genpd.flags = GENPD_FLAG_PM_CLK;
	if (pd_info->active_wakeup)
		pd->genpd.flags |= GENPD_FLAG_ACTIVE_WAKEUP;
	FUNC15(&pd->genpd, NULL, false);

	pmu->genpd_data.domains[id] = &pd->genpd;
	return 0;

err_unprepare_clocks:
	FUNC4(pd->num_clks, pd->clks);
err_put_clocks:
	FUNC3(pd->num_clks, pd->clks);
	return error;
}