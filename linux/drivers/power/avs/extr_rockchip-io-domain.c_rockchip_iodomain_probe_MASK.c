#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  notifier_call; } ;
struct rockchip_iodomain_supply {int idx; TYPE_2__ nb; struct regulator* reg; struct rockchip_iodomain* iod; } ;
struct rockchip_iodomain {struct rockchip_iodomain_supply* supplies; TYPE_1__* soc_data; TYPE_4__* dev; struct regulator* grf; } ;
struct regulator {int dummy; } ;
struct TYPE_11__ {struct device* parent; struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_9__ {char** supply_names; int /*<<< orphan*/  (* init ) (struct rockchip_iodomain*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator*) ; 
 int MAX_SUPPLIES ; 
 int MAX_VOLTAGE_3_3 ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 struct rockchip_iodomain* FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 struct regulator* FUNC6 (TYPE_4__*,char const*) ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct rockchip_iodomain*) ; 
 int FUNC9 (struct regulator*) ; 
 int FUNC10 (struct regulator*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct regulator*,TYPE_2__*) ; 
 int /*<<< orphan*/  rockchip_iodomain_match ; 
 int /*<<< orphan*/  rockchip_iodomain_notify ; 
 int FUNC12 (struct rockchip_iodomain_supply*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rockchip_iodomain*) ; 
 struct regulator* FUNC14 (scalar_t__) ; 
 struct regulator* FUNC15 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *match;
	struct rockchip_iodomain *iod;
	struct device *parent;
	int i, ret = 0;

	if (!np)
		return -ENODEV;

	iod = FUNC5(&pdev->dev, sizeof(*iod), GFP_KERNEL);
	if (!iod)
		return -ENOMEM;

	iod->dev = &pdev->dev;
	FUNC8(pdev, iod);

	match = FUNC7(rockchip_iodomain_match, np);
	iod->soc_data = match->data;

	parent = pdev->dev.parent;
	if (parent && parent->of_node) {
		iod->grf = FUNC14(parent->of_node);
	} else {
		FUNC3(&pdev->dev, "falling back to old binding\n");
		iod->grf = FUNC15(np, "rockchip,grf");
	}

	if (FUNC0(iod->grf)) {
		FUNC4(&pdev->dev, "couldn't find grf regmap\n");
		return FUNC1(iod->grf);
	}

	for (i = 0; i < MAX_SUPPLIES; i++) {
		const char *supply_name = iod->soc_data->supply_names[i];
		struct rockchip_iodomain_supply *supply = &iod->supplies[i];
		struct regulator *reg;
		int uV;

		if (!supply_name)
			continue;

		reg = FUNC6(iod->dev, supply_name);
		if (FUNC0(reg)) {
			ret = FUNC1(reg);

			/* If a supply wasn't specified, that's OK */
			if (ret == -ENODEV)
				continue;
			else if (ret != -EPROBE_DEFER)
				FUNC4(iod->dev, "couldn't get regulator %s\n",
					supply_name);
			goto unreg_notify;
		}

		/* set initial correct value */
		uV = FUNC9(reg);

		/* must be a regulator we can get the voltage of */
		if (uV < 0) {
			FUNC4(iod->dev, "Can't determine voltage: %s\n",
				supply_name);
			goto unreg_notify;
		}

		if (uV > MAX_VOLTAGE_3_3) {
			FUNC2(iod->dev,
				 "%d uV is too high. May damage SoC!\n",
				 uV);
			ret = -EINVAL;
			goto unreg_notify;
		}

		/* setup our supply */
		supply->idx = i;
		supply->iod = iod;
		supply->reg = reg;
		supply->nb.notifier_call = rockchip_iodomain_notify;

		ret = FUNC12(supply, uV);
		if (ret) {
			supply->reg = NULL;
			goto unreg_notify;
		}

		/* register regulator notifier */
		ret = FUNC10(reg, &supply->nb);
		if (ret) {
			FUNC4(&pdev->dev,
				"regulator notifier request failed\n");
			supply->reg = NULL;
			goto unreg_notify;
		}
	}

	if (iod->soc_data->init)
		iod->soc_data->init(iod);

	return 0;

unreg_notify:
	for (i = MAX_SUPPLIES - 1; i >= 0; i--) {
		struct rockchip_iodomain_supply *io_supply = &iod->supplies[i];

		if (io_supply->reg)
			FUNC11(io_supply->reg,
						      &io_supply->nb);
	}

	return ret;
}