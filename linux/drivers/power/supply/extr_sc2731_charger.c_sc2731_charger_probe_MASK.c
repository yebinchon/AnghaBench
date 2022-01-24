#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  notifier_call; } ;
struct sc2731_charger_info {TYPE_1__ usb_notify; int /*<<< orphan*/  usb_phy; int /*<<< orphan*/  psy_usb; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; int /*<<< orphan*/  work; TYPE_2__* dev; int /*<<< orphan*/  lock; } ;
struct power_supply_config {struct device_node* of_node; struct sc2731_charger_info* drv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sc2731_charger_info* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sc2731_charger_desc ; 
 int /*<<< orphan*/  FUNC10 (struct sc2731_charger_info*) ; 
 int FUNC11 (struct sc2731_charger_info*) ; 
 int /*<<< orphan*/  sc2731_charger_usb_change ; 
 int /*<<< orphan*/  sc2731_charger_work ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct sc2731_charger_info *info;
	struct power_supply_config charger_cfg = { };
	int ret;

	info = FUNC5(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	FUNC8(&info->lock);
	info->dev = &pdev->dev;
	FUNC0(&info->work, sc2731_charger_work);

	info->regmap = FUNC4(pdev->dev.parent, NULL);
	if (!info->regmap) {
		FUNC3(&pdev->dev, "failed to get charger regmap\n");
		return -ENODEV;
	}

	ret = FUNC9(np, "reg", &info->base);
	if (ret) {
		FUNC3(&pdev->dev, "failed to get register address\n");
		return -ENODEV;
	}

	charger_cfg.drv_data = info;
	charger_cfg.of_node = np;
	info->psy_usb = FUNC6(&pdev->dev,
						   &sc2731_charger_desc,
						   &charger_cfg);
	if (FUNC1(info->psy_usb)) {
		FUNC3(&pdev->dev, "failed to register power supply\n");
		return FUNC2(info->psy_usb);
	}

	ret = FUNC11(info);
	if (ret)
		return ret;

	info->usb_phy = FUNC7(&pdev->dev, "phys", 0);
	if (FUNC1(info->usb_phy)) {
		FUNC3(&pdev->dev, "failed to find USB phy\n");
		return FUNC2(info->usb_phy);
	}

	info->usb_notify.notifier_call = sc2731_charger_usb_change;
	ret = FUNC12(info->usb_phy, &info->usb_notify);
	if (ret) {
		FUNC3(&pdev->dev, "failed to register notifier: %d\n", ret);
		return ret;
	}

	FUNC10(info);

	return 0;
}