#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct max77693_charger* drv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max77693_dev {int dummy; } ;
struct max77693_charger {int /*<<< orphan*/  charger; struct max77693_dev* max77693; TYPE_1__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_fast_charge_timer ; 
 int /*<<< orphan*/  dev_attr_top_off_threshold_current ; 
 int /*<<< orphan*/  dev_attr_top_off_timer ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct max77693_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct max77693_charger* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max77693_charger_desc ; 
 int FUNC7 (TYPE_1__*,struct max77693_charger*) ; 
 int FUNC8 (struct max77693_charger*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct max77693_charger*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct max77693_charger *chg;
	struct power_supply_config psy_cfg = {};
	struct max77693_dev *max77693 = FUNC3(pdev->dev.parent);
	int ret;

	chg = FUNC6(&pdev->dev, sizeof(*chg), GFP_KERNEL);
	if (!chg)
		return -ENOMEM;

	FUNC9(pdev, chg);
	chg->dev = &pdev->dev;
	chg->max77693 = max77693;

	ret = FUNC7(&pdev->dev, chg);
	if (ret)
		return ret;

	ret = FUNC8(chg);
	if (ret)
		return ret;

	psy_cfg.drv_data = chg;

	ret = FUNC4(&pdev->dev, &dev_attr_fast_charge_timer);
	if (ret) {
		FUNC2(&pdev->dev, "failed: create fast charge timer sysfs entry\n");
		goto err;
	}

	ret = FUNC4(&pdev->dev,
			&dev_attr_top_off_threshold_current);
	if (ret) {
		FUNC2(&pdev->dev, "failed: create top off current sysfs entry\n");
		goto err;
	}

	ret = FUNC4(&pdev->dev, &dev_attr_top_off_timer);
	if (ret) {
		FUNC2(&pdev->dev, "failed: create top off timer sysfs entry\n");
		goto err;
	}

	chg->charger = FUNC10(&pdev->dev,
						&max77693_charger_desc,
						&psy_cfg);
	if (FUNC0(chg->charger)) {
		FUNC2(&pdev->dev, "failed: power supply register\n");
		ret = FUNC1(chg->charger);
		goto err;
	}

	return 0;

err:
	FUNC5(&pdev->dev, &dev_attr_top_off_timer);
	FUNC5(&pdev->dev, &dev_attr_top_off_threshold_current);
	FUNC5(&pdev->dev, &dev_attr_fast_charge_timer);

	return ret;
}