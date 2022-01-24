#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct max8925_power_pdata {int /*<<< orphan*/  no_insert_detect; int /*<<< orphan*/  no_temp_support; int /*<<< orphan*/  set_charger; int /*<<< orphan*/  fast_charge; int /*<<< orphan*/  topoff_threshold; int /*<<< orphan*/  batt_detect; int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; } ;
struct max8925_power_info {TYPE_2__* ac; TYPE_2__* usb; int /*<<< orphan*/  no_insert_detect; int /*<<< orphan*/  no_temp_support; int /*<<< orphan*/  set_charger; int /*<<< orphan*/  fast_charge; int /*<<< orphan*/  topoff_threshold; int /*<<< orphan*/  batt_detect; TYPE_2__* battery; int /*<<< orphan*/  adc; int /*<<< orphan*/  gpm; struct max8925_chip* chip; } ;
struct max8925_chip {int /*<<< orphan*/  adc; int /*<<< orphan*/  i2c; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ac_desc ; 
 int /*<<< orphan*/  battery_desc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 struct max8925_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 struct max8925_power_info* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct max8925_chip*,struct max8925_power_info*) ; 
 struct max8925_power_pdata* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct max8925_power_info*) ; 
 void* FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  usb_desc ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct max8925_chip *chip = FUNC3(pdev->dev.parent);
	struct power_supply_config psy_cfg = {}; /* Only for ac and usb */
	struct max8925_power_pdata *pdata = NULL;
	struct max8925_power_info *info;
	int ret;

	pdata = FUNC6(pdev);
	if (!pdata) {
		FUNC2(&pdev->dev, "platform data isn't assigned to "
			"power supply\n");
		return -EINVAL;
	}

	info = FUNC4(&pdev->dev, sizeof(struct max8925_power_info),
				GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->chip = chip;
	info->gpm = chip->i2c;
	info->adc = chip->adc;
	FUNC7(pdev, info);

	psy_cfg.supplied_to = pdata->supplied_to;
	psy_cfg.num_supplicants = pdata->num_supplicants;

	info->ac = FUNC8(&pdev->dev, &ac_desc, &psy_cfg);
	if (FUNC0(info->ac)) {
		ret = FUNC1(info->ac);
		goto out;
	}
	info->ac->dev.parent = &pdev->dev;

	info->usb = FUNC8(&pdev->dev, &usb_desc, &psy_cfg);
	if (FUNC0(info->usb)) {
		ret = FUNC1(info->usb);
		goto out_unregister_ac;
	}
	info->usb->dev.parent = &pdev->dev;

	info->battery = FUNC8(&pdev->dev, &battery_desc, NULL);
	if (FUNC0(info->battery)) {
		ret = FUNC1(info->battery);
		goto out_unregister_usb;
	}
	info->battery->dev.parent = &pdev->dev;

	info->batt_detect = pdata->batt_detect;
	info->topoff_threshold = pdata->topoff_threshold;
	info->fast_charge = pdata->fast_charge;
	info->set_charger = pdata->set_charger;
	info->no_temp_support = pdata->no_temp_support;
	info->no_insert_detect = pdata->no_insert_detect;

	FUNC5(chip, info);
	return 0;
out_unregister_usb:
	FUNC9(info->usb);
out_unregister_ac:
	FUNC9(info->ac);
out:
	return ret;
}