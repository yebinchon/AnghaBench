#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct max14577_charger* drv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max14577_charger {int /*<<< orphan*/  charger; int /*<<< orphan*/  pdata; struct max14577* max14577; TYPE_1__* dev; } ;
struct max14577 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX ; 
 scalar_t__ MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN ; 
 int MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_fast_charge_timer ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct max14577* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct max14577_charger* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max14577_charger_desc ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int FUNC10 (struct max14577_charger*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct max14577_charger*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct max14577_charger *chg;
	struct power_supply_config psy_cfg = {};
	struct max14577 *max14577 = FUNC5(pdev->dev.parent);
	int ret;

	chg = FUNC8(&pdev->dev, sizeof(*chg), GFP_KERNEL);
	if (!chg)
		return -ENOMEM;

	FUNC11(pdev, chg);
	chg->dev = &pdev->dev;
	chg->max14577 = max14577;

	chg->pdata = FUNC9(pdev);
	if (FUNC2(chg->pdata))
		return FUNC3(chg->pdata);

	ret = FUNC10(chg);
	if (ret)
		return ret;

	ret = FUNC6(&pdev->dev, &dev_attr_fast_charge_timer);
	if (ret) {
		FUNC4(&pdev->dev, "failed: create sysfs entry\n");
		return ret;
	}

	psy_cfg.drv_data = chg;
	chg->charger = FUNC12(&pdev->dev, &max14577_charger_desc,
						&psy_cfg);
	if (FUNC1(chg->charger)) {
		FUNC4(&pdev->dev, "failed: power supply register\n");
		ret = FUNC3(chg->charger);
		goto err;
	}

	/* Check for valid values for charger */
	FUNC0(MAX14577_CHARGER_EOC_CURRENT_LIMIT_MIN +
			MAX14577_CHARGER_EOC_CURRENT_LIMIT_STEP * 0xf !=
			MAX14577_CHARGER_EOC_CURRENT_LIMIT_MAX);
	return 0;

err:
	FUNC7(&pdev->dev, &dev_attr_fast_charge_timer);

	return ret;
}