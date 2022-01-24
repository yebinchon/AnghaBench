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
struct power_supply_config {struct charger_data* drv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8997_platform_data {int eoc_mA; int timeout; } ;
struct max8997_dev {int /*<<< orphan*/  i2c; int /*<<< orphan*/  dev; } ;
struct charger_data {int /*<<< orphan*/  battery; struct max8997_dev* iodev; TYPE_1__* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX8997_REG_MBCCTRL1 ; 
 int /*<<< orphan*/  MAX8997_REG_MBCCTRL5 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct max8997_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct max8997_platform_data* FUNC4 (int /*<<< orphan*/ ) ; 
 struct charger_data* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  max8997_battery_desc ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct charger_data*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int ret = 0;
	struct charger_data *charger;
	struct max8997_dev *iodev = FUNC3(pdev->dev.parent);
	struct max8997_platform_data *pdata = FUNC4(iodev->dev);
	struct power_supply_config psy_cfg = {};

	if (!pdata)
		return -EINVAL;

	if (pdata->eoc_mA) {
		int val = (pdata->eoc_mA - 50) / 10;
		if (val < 0)
			val = 0;
		if (val > 0xf)
			val = 0xf;

		ret = FUNC7(iodev->i2c,
				MAX8997_REG_MBCCTRL5, val, 0xf);
		if (ret < 0) {
			FUNC2(&pdev->dev, "Cannot use i2c bus.\n");
			return ret;
		}
	}

	switch (pdata->timeout) {
	case 5:
		ret = FUNC7(iodev->i2c, MAX8997_REG_MBCCTRL1,
				0x2 << 4, 0x7 << 4);
		break;
	case 6:
		ret = FUNC7(iodev->i2c, MAX8997_REG_MBCCTRL1,
				0x3 << 4, 0x7 << 4);
		break;
	case 7:
		ret = FUNC7(iodev->i2c, MAX8997_REG_MBCCTRL1,
				0x4 << 4, 0x7 << 4);
		break;
	case 0:
		ret = FUNC7(iodev->i2c, MAX8997_REG_MBCCTRL1,
				0x7 << 4, 0x7 << 4);
		break;
	default:
		FUNC2(&pdev->dev, "incorrect timeout value (%d)\n",
				pdata->timeout);
		return -EINVAL;
	}
	if (ret < 0) {
		FUNC2(&pdev->dev, "Cannot use i2c bus.\n");
		return ret;
	}

	charger = FUNC5(&pdev->dev, sizeof(*charger), GFP_KERNEL);
	if (!charger)
		return -ENOMEM;

	FUNC8(pdev, charger);


	charger->dev = &pdev->dev;
	charger->iodev = iodev;

	psy_cfg.drv_data = charger;

	charger->battery = FUNC6(&pdev->dev,
						 &max8997_battery_desc,
						 &psy_cfg);
	if (FUNC0(charger->battery)) {
		FUNC2(&pdev->dev, "failed: power supply register\n");
		return FUNC1(charger->battery);
	}

	return 0;
}