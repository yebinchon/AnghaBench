#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct da9030_charger* drv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; struct da9030_battery_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  notifier_call; } ;
struct da9030_charger {int charge_milliamp; int charge_millivolt; int /*<<< orphan*/  work; TYPE_3__ nb; int /*<<< orphan*/  master; int /*<<< orphan*/  debug_file; int /*<<< orphan*/  psy; int /*<<< orphan*/  psy_desc; int /*<<< orphan*/  interval; int /*<<< orphan*/  battery_critical; int /*<<< orphan*/  battery_low; int /*<<< orphan*/  battery_info; } ;
struct da9030_battery_info {int charge_milliamp; int charge_millivolt; int /*<<< orphan*/  battery_critical; int /*<<< orphan*/  battery_low; int /*<<< orphan*/  battery_info; scalar_t__ batmon_interval; } ;

/* Variables and functions */
 int DA9030_EVENT_CHDET ; 
 int DA9030_EVENT_CHIOVER ; 
 int DA9030_EVENT_TBAT ; 
 int DA9030_EVENT_VBATMON ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct da9030_charger*) ; 
 int FUNC5 (struct da9030_charger*) ; 
 int /*<<< orphan*/  FUNC6 (struct da9030_charger*,struct da9030_battery_info*) ; 
 int /*<<< orphan*/  da9030_battery_event ; 
 int /*<<< orphan*/  FUNC7 (struct da9030_charger*) ; 
 int /*<<< orphan*/  da9030_charging_monitor ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 struct da9030_charger* FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct da9030_charger*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct da9030_charger *charger;
	struct power_supply_config psy_cfg = {};
	struct da9030_battery_info *pdata = pdev->dev.platform_data;
	int ret;

	if (pdata == NULL)
		return -EINVAL;

	if (pdata->charge_milliamp >= 1500 ||
	    pdata->charge_millivolt < 4000 ||
	    pdata->charge_millivolt > 4350)
		return -EINVAL;

	charger = FUNC10(&pdev->dev, sizeof(*charger), GFP_KERNEL);
	if (charger == NULL)
		return -ENOMEM;

	charger->master = pdev->dev.parent;

	/* 10 seconds between monitor runs unless platform defines other
	   interval */
	charger->interval = FUNC11(
		(pdata->batmon_interval ? : 10) * 1000);

	charger->charge_milliamp = pdata->charge_milliamp;
	charger->charge_millivolt = pdata->charge_millivolt;
	charger->battery_info = pdata->battery_info;
	charger->battery_low = pdata->battery_low;
	charger->battery_critical = pdata->battery_critical;

	FUNC6(charger, pdata);

	ret = FUNC5(charger);
	if (ret)
		goto err_charger_init;

	FUNC0(&charger->work, da9030_charging_monitor);
	FUNC14(&charger->work, charger->interval);

	charger->nb.notifier_call = da9030_battery_event;
	ret = FUNC8(charger->master, &charger->nb,
				       DA9030_EVENT_CHDET |
				       DA9030_EVENT_VBATMON |
				       DA9030_EVENT_CHIOVER |
				       DA9030_EVENT_TBAT);
	if (ret)
		goto err_notifier;

	FUNC7(charger);
	psy_cfg.drv_data = charger;
	charger->psy = FUNC13(&pdev->dev, &charger->psy_desc,
					     &psy_cfg);
	if (FUNC1(charger->psy)) {
		ret = FUNC2(charger->psy);
		goto err_ps_register;
	}

	charger->debug_file = FUNC4(charger);
	FUNC12(pdev, charger);
	return 0;

err_ps_register:
	FUNC9(charger->master, &charger->nb,
				   DA9030_EVENT_CHDET | DA9030_EVENT_VBATMON |
				   DA9030_EVENT_CHIOVER | DA9030_EVENT_TBAT);
err_notifier:
	FUNC3(&charger->work);

err_charger_init:
	return ret;
}